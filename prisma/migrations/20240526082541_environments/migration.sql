/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Environment` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `projectId` to the `Environment` table without a default value. This is not possible if the table is not empty.
  - Made the column `name` on table `Environment` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Environment" ADD COLUMN     "projectId" TEXT NOT NULL,
ALTER COLUMN "name" SET NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Environment_name_key" ON "Environment"("name");

-- AddForeignKey
ALTER TABLE "Environment" ADD CONSTRAINT "Environment_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "Project"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
