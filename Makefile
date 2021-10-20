SHELL = /usr/bin/env bash -o nounset -o pipefail -o errexit -c

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
	@curl --disable --silent --show-error --location --max-time 30 "https://raw.githubusercontent.com/ViBiOh/scripts/main/bootstrap" | bash -s -- "-c" "git_hooks"

## lint: Lint helm package
.PHONY: lint
lint:
	helm lint app/
	helm lint cron/
	helm lint flux/
	helm lint job/
	helm lint postgres/
	helm lint redis/

## package: Package every charts into a tgz
.PHONY: package
package:
	helm package app/ --destination packages/
	helm package cron/ --destination packages/
	helm package flux/ --destination packages/
	helm package job/ --destination packages/
	helm package postgres/ --destination packages/
	helm package redis/ --destination packages/

## index: Index current repository state
.PHONY: index
index:
	helm repo index .

## build: Package and index repository
.PHONY: build
build: lint package index
