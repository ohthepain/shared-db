/*
  Warnings:

  - The `configId` column on the `Environment` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Config" ADD CONSTRAINT "Config_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Environment" ADD COLUMN     "status" TEXT NOT NULL DEFAULT 'CREATED',
DROP COLUMN "configId",
ADD COLUMN     "configId" INTEGER;

-- AddForeignKey
ALTER TABLE "Environment" ADD CONSTRAINT "Environment_configId_fkey" FOREIGN KEY ("configId") REFERENCES "Config"("id") ON DELETE SET NULL ON UPDATE CASCADE;
