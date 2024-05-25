-- CreateTable
CREATE TABLE "YogaUser" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "YogaUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "YogaSession" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "sessionId" TEXT NOT NULL,
    "yogaUserId" TEXT NOT NULL,

    CONSTRAINT "YogaSession_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "YogaSession" ADD CONSTRAINT "YogaSession_yogaUserId_fkey" FOREIGN KEY ("yogaUserId") REFERENCES "YogaUser"("id") ON DELETE CASCADE ON UPDATE CASCADE;
