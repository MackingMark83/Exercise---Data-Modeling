-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "league" (
    "ID" SERIAL   NOT NULL,
    "Teams" Text   NOT NULL,
    "Rankings" INTEGER   NOT NULL
);

CREATE TABLE "Referees" (
    "ID" SERIAL   NOT NULL,
    "Name" TEXT   NOT NULL
);

CREATE TABLE "Players" (
    "ID" SERIAL   NOT NULL,
    "Name" TEXT   NOT NULL,
    "TeamID" INTEGER   NOT NULL,
    "Goals" INTEGER   NOT NULL
);

CREATE TABLE "Matches" (
    "ID" SERIAL   NOT NULL,
    "Home_Team" TEXT   NOT NULL,
    "AWAY_Team" TEXT   NOT NULL,
    "Date" INTEGER   NOT NULL,
    "RefereeID" INTEGER   NOT NULL,
    "SeasonID" INTEGER   NOT NULL
);

CREATE TABLE "Season" (
    "ID" SERIAL   NOT NULL,
    "Start_DATE" INTEGER   NOT NULL,
    "End_Date" INTEGER   NOT NULL
);

ALTER TABLE "league" ADD CONSTRAINT "fk_league_ID" FOREIGN KEY("ID")
REFERENCES "Players" ("TeamID");

ALTER TABLE "Matches" ADD CONSTRAINT "fk_Matches_RefereeID" FOREIGN KEY("RefereeID")
REFERENCES "Referees" ("ID");

ALTER TABLE "Season" ADD CONSTRAINT "fk_Season_ID" FOREIGN KEY("ID")
REFERENCES "Matches" ("SeasonID");

