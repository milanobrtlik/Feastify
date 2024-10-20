using Microsoft.EntityFrameworkCore;
using Npgsql;
using SalatyAPI.Contest.Entity;

namespace SalatyAPI;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions options) : base(options)
    {
        NpgsqlConnection.GlobalTypeMapper.MapEnum<ContestState>();
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasPostgresEnum<ContestState>();

        modelBuilder.Entity<User.Entity.User>()
            .HasIndex(u => u.Name)
            .IsUnique();
    }

    public DbSet<User.Entity.User> Users { get; set; } = default!;
    public DbSet<Contest.Entity.Contest> Contests { get; set; } = default!;
    public DbSet<Criteria.Entity.Criteria> Criteria { get; set; } = default!;
    public DbSet<Competitor.Entity.Competitor> Competitors { get; set; } = default!;
    public DbSet<UserRating.Entity.UserRating> Ratings { get; set; } = default!;
}
