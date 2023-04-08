import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
  const foosWithoutUser = await prisma.foo.findMany({
    where: {
      user: { isNot: null },
    },
  });

  console.log(foosWithoutUser);
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })