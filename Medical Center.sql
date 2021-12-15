-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yrSQIk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Doctor" (
    "ID" SERIAL   NOT NULL,
    "Name" TEXT   NOT NULL,
    "Gender" TEXT   NOT NULL,
    "JobType" TEXT   NOT NULL
);

CREATE TABLE "Patients" (
    "ID" SERIAL   NOT NULL,
    "Name" TEXT   NOT NULL,
    "Gender" TEXT   NOT NULL,
    "Diagnoses" TEXT   NOT NULL,
    "DoctorID" INTEGER  NOT NULL
);

ALTER TABLE "Doctor" ADD CONSTRAINT "fk_Doctor_ID" FOREIGN KEY("ID")
REFERENCES "Patients" ("DoctorID");

