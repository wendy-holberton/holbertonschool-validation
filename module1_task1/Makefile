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
	sed -i '' -e '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md




