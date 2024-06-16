/*
  Warnings:

  - You are about to drop the column `name` on the `Branch` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[projectId,gitBranch]` on the table `Branch` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Branch_projectId_name_key";

-- AlterTable
ALTER TABLE "Branch" DROP COLUMN "name";

-- CreateIndex
CREATE UNIQUE INDEX "Branch_projectId_gitBranch_key" ON "Branch"("projectId", "gitBranch");
