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
	sed -i "s/title: "$(POST_NAME)"/title: "$(POST_TITLE)"/g" ./content/posts/$(POST_NAME).md 




