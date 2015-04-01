namespace Shopping_Cart_Personal.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changed_product_table : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Shopping_Cart", "product_Id", "dbo.Products");
            DropIndex("dbo.Shopping_Cart", new[] { "product_Id" });
            AddColumn("dbo.Shopping_Cart", "Name", c => c.String());
            AddColumn("dbo.Products", "Quantity", c => c.Int(nullable: false));
            AddColumn("dbo.Products", "Shopping_Cart_Id", c => c.Int());
            CreateIndex("dbo.Products", "Shopping_Cart_Id");
            AddForeignKey("dbo.Products", "Shopping_Cart_Id", "dbo.Shopping_Cart", "Id");
            DropColumn("dbo.Shopping_Cart", "Quantity");
            DropColumn("dbo.Shopping_Cart", "product_Id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Shopping_Cart", "product_Id", c => c.Int());
            AddColumn("dbo.Shopping_Cart", "Quantity", c => c.Int(nullable: false));
            DropForeignKey("dbo.Products", "Shopping_Cart_Id", "dbo.Shopping_Cart");
            DropIndex("dbo.Products", new[] { "Shopping_Cart_Id" });
            DropColumn("dbo.Products", "Shopping_Cart_Id");
            DropColumn("dbo.Products", "Quantity");
            DropColumn("dbo.Shopping_Cart", "Name");
            CreateIndex("dbo.Shopping_Cart", "product_Id");
            AddForeignKey("dbo.Shopping_Cart", "product_Id", "dbo.Products", "Id");
        }
    }
}
