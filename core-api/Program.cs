using Microsoft.EntityFrameworkCore;
using Npgsql;
using SalatyAPI;
using SalatyAPI.Competitor;
using SalatyAPI.UserRating;
using SalatyAPI.Contest;
using SalatyAPI.Criteria;
using SalatyAPI.User;
using SalatyAPI.User.Auth;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddCors(o =>
    o.AddDefaultPolicy(b =>
        b.AllowAnyHeader()
            .AllowAnyMethod()
            .AllowAnyOrigin()));

builder.Services.AddPooledDbContextFactory<AppDbContext>(
    options => options
        .UseNpgsql(builder.Configuration.GetConnectionString("default"))
        .UseSnakeCaseNamingConvention()
);

builder
    .Services
    .AddHttpContextAccessor();

JwtConfigurator.Configure(builder.Services, builder.Configuration);

var server = builder
    .Services
    .AddGraphQLServer();

GraphQLConfigurator.Configure(server);
UserConfigurator.Configure(server);
CompetitorConfigurator.Configure(server);
UserRatingConfigurator.Configure(server);
ContestConfigurator.Configure(server);
CriteriaConfigurator.Configure(server);

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}

app
    .UseCors()
    .UseRouting()
    .UseAuthentication()
    .UseEndpoints(x => x.MapGraphQL())
    ;

using (var scope = app.Services.CreateScope())
{
    var factory = scope.ServiceProvider.GetRequiredService<IDbContextFactory<AppDbContext>>();
    var ctx = factory.CreateDbContext();
    ctx.Database.Migrate();
    // Reload enums after migrations
    var connection = (NpgsqlConnection)ctx.Database.GetDbConnection();
    connection.Open();
    connection.ReloadTypes();
}

app.Run();
