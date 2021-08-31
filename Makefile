
.PHONY: build

build:
	GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o ./bin/unneko-darwin-x64 .
	GOOS=darwin GOARCH=arm64 go build -ldflags="-s -w" -o ./bin/unneko-darwin-arm64 .
	GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o ./bin/unneko-linux-x64 .
	GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o ./bin/unneko-win-x64.exe .