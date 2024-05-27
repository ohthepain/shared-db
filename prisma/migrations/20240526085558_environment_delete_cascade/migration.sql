-- DropForeignKey
ALTER TABLE "Environment" DROP CONSTRAINT "Environment_projectId_fkey";

-- AddForeignKey
ALTER TABLE "Environment" ADD CONSTRAINT "Environment_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "Project"("id") ON DELETE CASCADE ON UPDATE CASCADE;
