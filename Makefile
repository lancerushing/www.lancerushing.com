
VERSION := $(shell cat ./VERSION)
BUILD := `git rev-parse HEAD`

.PHONY: build deploy dev

build:
	hugo

deploy:
	aws --profile lance s3 sync --delete public/ s3://www.lancerushing.com/

dev:
	#open "http://localhost:1313/"
	hugo server -D -b http://100.115.92.199 --bind 100.115.92.199

version:
	@echo $(VERSION)
