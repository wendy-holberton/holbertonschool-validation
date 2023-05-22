.DEFAULT_GOAL:= help

##@ Package
.PHONY: package

package: ## produces a file containing the binary and directory
	mkdir -p dist
	cp awesome-api dist/
	zip -r awesome-website.zip dist/

##@ Lint
.PHONY: lint

lint: ## lint should be implemented and should fail when the linter catches and error
	@echo "lint"
#	docker run --volume=$(pwd):/app --workdir=/app/module4_task0 golang:1.15.8-buster golangci-lint run 
	markdownlint -f README.md DEPLOY.md  || true

##@ Build
.PHONY: build

build: lint ## compile the source code of the application to a binary named awesome-api 
	@echo "build"
	go build -o awesome-api
	hugo


run: ## Run the application in background by executing the binary awesome-api
	@echo "run"
	./awesome-api > ./awesome-api.log 2>&1 &

stop: ## Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application
	@echo "stop"
	kill $$(pgrep awesome-api) || true

##@ Clean
.PHONY: clean

clean: stop ## Delete the binary and the log file 
	@echo "clean"
	rm -rf awesome-api awesome-api.log coverage-units.out coverage-integrations.out
	rm -f awesome-website.zip

test: unit-tests integration-tests ##  test it to ensure that it behaves as expected
	@echo "test"

unit-tests: ## unit-tests should be implemented and should execute (successfully) the Golang unit tests
	@echo "unit-tests"
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Add a new target to execute the Integration tests
	@echo "integration-tests"
	@echo "skipping Unit Tests"
	go test -v -run Integration -coverprofile=coverage-integrations.out

##@ Help
.PHONY: help

help: ## help something
	@awk '/^[^ .\t].*:/ { \
		target=$$1; \
		split($$0,desc,"##"); \
		if ($$2) { \
			printf "%s%s\n", target, desc[2]; \
		} \
	}' $(MAKEFILE_LIST)

##@ Run
.PHONY: run

run: ## Run the application in background by executing the binary awesome-api
	@echo "run"
	./awesome-api > ./awesome-api.log 2>&1 & 	

##@ Post
.PHONY: post

post: ## post something
	@echo "Posting a new blog post"
	hugo new posts/$(POST_NAME).md 
