.DEFAULT_GOAL:= help

##@ Build
.PHONY: build

build: ## build something
	@echo "Building the website"
	hugo

##@ Clean
.PHONY: clean

clean: ## clean something really clean
	rm -f awesome-website.zip

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

##@ Package
.PHONY: package

package: ## produces a file containing the binary and directory
	mkdir -p dist
	cp awesome-api dist/
	zip -r awesome-website.zip dist/

##@ Lint
.PHONY: lint

lint: ## lint the files
	markdownlint -f README.md DEPLOY.md  || true

##@ Unit-tests
.PHONY: unit-tests

unit-tests: ## make unit-tests
	@echo "unit-tests"

##@ Integration-tests
.PHONY: integration-tests

integration-tests: ## make integration-tests
	@echo "integration-tests"

##@ Validate
.PHONY: validate

validate: ## make validate
	@echo: "validate"