ARGS = $(filter-out $@,$(MAKECMDGOALS))
MAKEFLAGS += --silent

.PHONY: build
build:
	cd devtools && $(MAKE) build
	cd webtools && $(MAKE) build

.PHONY: release
release:
	cd devtools && $(MAKE) release
	cd webtools && $(MAKE) release
