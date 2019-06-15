.PHONY: build clean deploy

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

functions := $(shell find functions -name \*main.go | awk -F'/' '{print $$2}')

build:
	make clean
	dep ensure -v
	@for function in $(functions) ; do \
		env GOOS=linux go build -ldflags="-s -w" -o bin/$$function functions/$$function/main.go ; \
	done

clean:
	rm -rf ./bin ./vendor Gopkg.lock

deploy: clean build
	sls deploy --verbose

local:
	make build
	sam local start-api
