using System.Text;
using Microsoft.IdentityModel.Tokens;

namespace SalatyAPI.User.Auth;
using Microsoft.AspNetCore.Authentication.JwtBearer;

public static class JwtConfigurator
{
    public static void Configure(IServiceCollection services, IConfiguration configuration)
    {
        var secret = configuration.GetSection("JwtSecret").Value;
        var bytes = Encoding.UTF8.GetBytes(secret);
        services.AddAuthentication(o =>
        {
            o.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
            o.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            o.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
        }).AddJwtBearer(o =>
        {
            o.TokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(bytes),
                ValidateIssuer = false,
                ValidateAudience = false,
            };
            o.RequireHttpsMetadata = false;
            o.SaveToken = true;
        });

        services.AddTransient<JwtFactory>();
    }
}
