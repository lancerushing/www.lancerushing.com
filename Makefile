SHELL := bash# we want bash behaviour in all shell invocations
VERSION := $(shell cat ./VERSION)
BUILD := `git rev-parse HEAD`
VERSION := $(shell cat ./VERSION)
IP_ADDRESS := $(shell hostname -I)

.PHONY: build deploy dev crouton

build:
	hugo

deploy:
	aws --profile lance s3 sync --delete public/ s3://www.lancerushing.com/

qa:
	hugo server -b http://$(IP_ADDRESS) --bind $(IP_ADDRESS) 


dev:
	#open "http://localhost:1313/"
	hugo server -D -b http://$(IP_ADDRESS) --bind $(IP_ADDRESS) 

crouton:
	#open "http://localhost:1313/"
	hugo server -D


version:
	@echo $(VERSION)
