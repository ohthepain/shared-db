/*
  Warnings:

  - Made the column `name` on table `Project` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Project" ALTER COLUMN "name" SET NOT NULL,
ALTER COLUMN "gitRepo" DROP NOT NULL,
ALTER COLUMN "bucket" DROP NOT NULL;
