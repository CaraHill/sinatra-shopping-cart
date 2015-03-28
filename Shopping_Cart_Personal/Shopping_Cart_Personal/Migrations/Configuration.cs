using Shopping_Cart_Personal.Models;

namespace Shopping_Cart_Personal.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Shopping_Cart_Personal.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Shopping_Cart_Personal.Models.ApplicationDbContext context)
        {
            
            context.Products.AddOrUpdate(

             new Product("Animal Footprint Shoes", 25.99, "http://removeandreplace.com/wp-content/uploads/2013/05/animal-footprint-shoes.jpg") ,  
             new  Product("The Boyfriend Arm Pillow",25.99,"http://removeandreplace.com/wp-content/uploads/2013/05/boyfriend-arm-pillow.jpg"),
             new Product("The Corn Kerneler Kitchen Tool",12.99,"http://removeandreplace.com/wp-content/uploads/2013/05/Corn-Kerneler.jpg"),
             new Product("The Disco Ball Helmet",49.99,"http://removeandreplace.com/wp-content/uploads/2013/05/disco-ball-helmet.jpg"),
             new Product("Emergency moustache kit",12.99,"http://removeandreplace.com/wp-content/uploads/2013/05/EMERGENCY-MOUSTACHES.jpg"),
             new Product("The Finger iPhone stand",19.99,"http://removeandreplace.com/wp-content/uploads/2013/05/Finger-iPhone-Stand.jpg"),
             new Product("iPhone Giant Horn Speaker",15.99,"http://removeandreplace.com/wp-content/uploads/2013/05/iphone-giant-horn-speaker.jpg")
              

               ) ;
            




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
