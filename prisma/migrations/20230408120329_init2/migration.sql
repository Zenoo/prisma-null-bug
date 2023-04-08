/*
  Warnings:

  - Made the column `userId` on table `Bar` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Bar" DROP CONSTRAINT "Bar_userId_fkey";

-- AlterTable
ALTER TABLE "Bar" ALTER COLUMN "userId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Bar" ADD CONSTRAINT "Bar_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
