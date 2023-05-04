.DEFAULT_GOAL:= help

##@ Build
.PHONY: build

build: ## build something
	@echo "Building the website"
	hugo

##@ Clean
.PHONY: clean

clean: ## clean something
	@echo "Cleaning the content of the directory dist/"
	rm -r dist/*

##@ Post
.PHONY: post

post: ## post something
	@echo "Posting a new blog post"
	hugo new posts/$(POST_NAME).md
	make POST_NAME=who-are-we POST_TITLE="Who are we"
	sed 's/string_to_replace/replacement_string/g' ./content/posts/$(POST_NAME).md 




