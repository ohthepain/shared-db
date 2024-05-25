# shared-db
Yep, I share a db across services to reduce AWS costs

This project manages the schema and migrations.

Each project has a .schema file in the prisma/ folder. 

generate: npm run generate
migrate: npm run migrate
