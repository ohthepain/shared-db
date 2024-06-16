/*
  Warnings:

  - You are about to drop the column `awsAccessKey` on the `Environment` table. All the data in the column will be lost.
  - You are about to drop the column `awsSecretKey` on the `Environment` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `Environment` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Environment" DROP COLUMN "awsAccessKey",
DROP COLUMN "awsSecretKey",
DROP COLUMN "status",
ADD COLUMN     "awsRegion" VARCHAR(128),
ADD COLUMN     "warningMessage" VARCHAR(1024);
