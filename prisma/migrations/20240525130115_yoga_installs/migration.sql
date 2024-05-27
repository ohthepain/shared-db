-- CreateTable
CREATE TABLE "Install" (
    "id" TEXT NOT NULL,
    "yogaUserId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Install_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Install" ADD CONSTRAINT "Install_yogaUserId_fkey" FOREIGN KEY ("yogaUserId") REFERENCES "YogaUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
