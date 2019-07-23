
VERSION := $(shell cat ./VERSION)
BUILD := `git rev-parse HEAD`

.PHONY: build deploy dev

build:
	hugo

deploy:
	aws --profile lance s3 sync --delete public/ s3://www.lancerushing.com/

dev:
	open "http://localhost:1313/"
	hugo server -D

version:
	@echo $(VERSION)
