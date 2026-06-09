.PHONY: build test lint clean

APP_NAME := backstage-app

build:
	go build -o $(APP_NAME) .

test:
	go test ./... -v -cover

lint:
	go vet ./...
	golangci-lint run

clean:
	rm -f $(APP_NAME)
