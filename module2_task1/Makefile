lint: ## lint should be implemented and should fail when the linter catches and error
	@echo "lint"
	golangci-lint run 

build: lint ## compile the source code of the application to a binary named awesome-api 
	@echo "build"
	go build -o awesome-api

run: ## Run the application in background by executing the binary awesome-api
	@echo "run"
	./awesome-api > ./awesome-api.log 2>&1 &

stop: ## Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application
	@echo "stop"
	kill $$(pgrep awesome-api) || true

clean: stop ## Delete the binary and the log file 
	@echo "clean"
	rm -rf awesome-api awesome-api.log

test: ##  test it to ensure that it behaves as expected
	@echo "test"
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## help something
	@awk '/^[^ .\t].*:/ { \
		target=$$1; \
		split($$0,desc,"##"); \
		if ($$2) { \
			printf "%s%s\n", target, desc[2]; \
		} \
	}' $(MAKEFILE_LIST)

 	

