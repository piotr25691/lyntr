.PHONY: all

all:
	git pull

	npm i dotenv
	
	npx drizzle-kit generate
	npx drizzle-kit migrate
	npx drizzle-kit push

	npm i
	npm run build 
