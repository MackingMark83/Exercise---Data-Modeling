-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Region" (
    "ID" SERIAL   NOT NULL,
    "Aera" TEXT   NOT NULL
);

CREATE TABLE "User" (
    "ID" SERIAL   NOT NULL,
    "Name" TEXT   NOT NULL,
    "Peferred_Region_ID" INTEGER   NOT NULL
);

CREATE TABLE "Post" (
    "Title" TEXT   NOT NULL,
    "TEXT" TEXT   NOT NULL,
    "Users_Posted" TEXT   NOT NULL,
    "Location_Posted" TEXT   NOT NULL,
    "CategoryID" INTEGER   NOT NULL,
    "RegionID" INTEGER   NOT NULL
);

CREATE TABLE "Categories" (
    "ID" SERIAL   NOT NULL,
    "TYPE" TEXT   NOT NULL
);

ALTER TABLE "Region" ADD CONSTRAINT "fk_Region_ID" FOREIGN KEY("ID")
REFERENCES "Post" ("RegionID");

ALTER TABLE "Region" ADD CONSTRAINT "fk_Region_Aera" FOREIGN KEY("Aera")
REFERENCES "User" ("Peferred_Region_ID");

ALTER TABLE "Post" ADD CONSTRAINT "fk_Post_CategoryID" FOREIGN KEY("CategoryID")
REFERENCES "Categories" ("ID");

