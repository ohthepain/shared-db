/*
  Warnings:

  - Added the required column `deviceId` to the `Install` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Install" ADD COLUMN     "deviceId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "Device" (
    "id" TEXT NOT NULL,

    CONSTRAINT "Device_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Install" ADD CONSTRAINT "Install_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES "Device"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
