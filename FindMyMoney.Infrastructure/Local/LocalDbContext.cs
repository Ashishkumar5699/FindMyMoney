using FindMyMoney.Infrastructure.Local.Entities;
using Microsoft.EntityFrameworkCore;

namespace FindMyMoney.Infrastructure.Local;

public class LocalDbContext(DbContextOptions<LocalDbContext> options) : DbContext(options)
{
    public DbSet<LocalUser> Users => Set<LocalUser>();
    public DbSet<LocalExpense> Expenses => Set<LocalExpense>();
    public DbSet<LocalIncome> Incomes => Set<LocalIncome>();
    public DbSet<LocalEmi> Emis => Set<LocalEmi>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<LocalUser>().ToTable("local_users");
        modelBuilder.Entity<LocalExpense>().ToTable("local_expenses");
        modelBuilder.Entity<LocalIncome>().ToTable("local_incomes");
        modelBuilder.Entity<LocalEmi>().ToTable("local_emis");
    }
}
