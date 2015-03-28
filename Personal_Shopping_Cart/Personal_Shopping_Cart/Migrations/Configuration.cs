using Personal_Shopping_Cart.Models;

namespace Personal_Shopping_Cart.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Personal_Shopping_Cart.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Personal_Shopping_Cart.Models.ApplicationDbContext context)
        {

            context.products.AddOrUpdate(
              new Product("3 in 1 BreakfastMaker",256.99),
               new Product("Animal Footprint Shoes",56.99),
                new Product("BoyFriend Arm Pillow",25.99),
                 new Product("Finger iPhone stand",36.99),
                  new Product("Emergency moustache kit",16.99)
                
                
                
                );

            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
    }
}
