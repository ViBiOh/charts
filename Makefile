SHELL = /bin/bash

ifneq ("$(wildcard .env)","")
	include .env
	export
endif

.DEFAULT_GOAL := build

## help: Display list of commands
.PHONY: help
help: Makefile
	@sed -n 's|^##||p' $< | column -t -s ':' | sort

## init: Bootstrap your application. e.g. fetch some data files, make some API calls, request user input etc...
.PHONY: init
init:
	@curl -q -sSL --max-time 30 "https://raw.githubusercontent.com/ViBiOh/scripts/master/bootstrap" | bash -s "git_hooks"

## lint: Lint helm package
.PHONY: lint
lint:
	helm lint app/
	helm lint cron/

## package: Package every charts into a tgz
.PHONY: package
package:
	helm package app/ --destination packages/
	helm package cron/ --destination packages/

## index: Index current repository state
.PHONY: index
index:
	helm repo index .

## build: Package and index repository
.PHONY: build
build: lint package index
