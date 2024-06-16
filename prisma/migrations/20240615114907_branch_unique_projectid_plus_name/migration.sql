/*
  Warnings:

  - A unique constraint covering the columns `[projectId,name]` on the table `Branch` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Branch_name_key";

-- CreateIndex
CREATE UNIQUE INDEX "Branch_projectId_name_key" ON "Branch"("projectId", "name");
