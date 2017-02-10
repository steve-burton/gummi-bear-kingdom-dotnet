using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace gummibearkingdom.Migrations
{
    public partial class MakeCostString : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Cost",
                table: "Products",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Cost",
                table: "Products",
                nullable: false);
        }
    }
}
