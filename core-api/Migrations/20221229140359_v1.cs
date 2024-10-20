using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using SalatyAPI.Contest.Entity;

#nullable disable

namespace SalatyAPI.Migrations
{
    /// <inheritdoc />
    public partial class v1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:contest_state", "preparing,not_started,ongoing,evaluating,evaluated");

            migrationBuilder.CreateTable(
                name: "contest",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "text", nullable: false),
                    state = table.Column<ContestState>(type: "contest_state", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_contest", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "user",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "text", nullable: false),
                    password = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_user", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "competitor",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    label = table.Column<string>(type: "text", nullable: false),
                    name = table.Column<string>(type: "text", nullable: false),
                    contestid = table.Column<int>(name: "contest_id", type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_competitor", x => x.id);
                    table.ForeignKey(
                        name: "fk_competitor_contest_contest_id",
                        column: x => x.contestid,
                        principalTable: "contest",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "criteria",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "text", nullable: false),
                    description = table.Column<string>(type: "text", nullable: true),
                    contestid = table.Column<int>(name: "contest_id", type: "integer", nullable: false),
                    weight = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_criteria", x => x.id);
                    table.ForeignKey(
                        name: "fk_criteria_contest_contest_id",
                        column: x => x.contestid,
                        principalTable: "contest",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "user_rating",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    userid = table.Column<int>(name: "user_id", type: "integer", nullable: false),
                    competitorid = table.Column<int>(name: "competitor_id", type: "integer", nullable: false),
                    criteriaid = table.Column<int>(name: "criteria_id", type: "integer", nullable: false),
                    rating = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_user_rating", x => x.id);
                    table.ForeignKey(
                        name: "fk_user_rating_competitor_competitor_id",
                        column: x => x.competitorid,
                        principalTable: "competitor",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_user_rating_criteria_criteria_id",
                        column: x => x.criteriaid,
                        principalTable: "criteria",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_user_rating_user_user_id",
                        column: x => x.userid,
                        principalTable: "user",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_competitor_contest_id",
                table: "competitor",
                column: "contest_id");

            migrationBuilder.CreateIndex(
                name: "ix_criteria_contest_id",
                table: "criteria",
                column: "contest_id");

            migrationBuilder.CreateIndex(
                name: "ix_user_name",
                table: "user",
                column: "name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "ix_user_rating_competitor_id",
                table: "user_rating",
                column: "competitor_id");

            migrationBuilder.CreateIndex(
                name: "ix_user_rating_criteria_id",
                table: "user_rating",
                column: "criteria_id");

            migrationBuilder.CreateIndex(
                name: "ix_user_rating_user_id",
                table: "user_rating",
                column: "user_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "user_rating");

            migrationBuilder.DropTable(
                name: "competitor");

            migrationBuilder.DropTable(
                name: "criteria");

            migrationBuilder.DropTable(
                name: "user");

            migrationBuilder.DropTable(
                name: "contest");
        }
    }
}
