.PHONY: build run unit-test integration-test docker-build clean

build:
	npm install

run:
	REDIS_HOST=localhost CATALOGUE_URL=http://localhost:8002 node server.js

unit-test:
	npm test

integration-test:
	npm run test:integration

docker-build:
	env
	docker build -t raghudevopsb89.azurecr.io/roboshop-cart:${GITHUB_SHA} .

docker-push:
	docker push raghudevopsb89.azurecr.io/roboshop-cart:${GITHUB_SHA}

clean:
	rm -rf node_modules
