.DEFAULT_GOAL:= help

##@ Build
.PHONY: build

build: ## build something
	@echo "Building the website"
	hugo

##@ Clean
.PHONY: clean

clean: ## clean something really clean
	@echo "Cleaning the content of the directory dist/"
	rm -r dist/*

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

