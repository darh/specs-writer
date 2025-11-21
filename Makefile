# Minimal Makefile to build AsciiDoc toolchain image and proxy exports to the container
# Defaults:
# - Host input:  SRC=$(CURDIR)/src         (override: make SRC=path)
# - Host output: OUT=$(CURDIR)/out         (override: make OUT=path)
# - Entry point: ADOC=index.adoc           (override: ADOC=file)
# - Container mounts: /workspace/src
#                 and /workspace/out
# - Image name: asciidoc-toolchain:latest (override: IMAGE=name)

SHELL   := /bin/sh
UID     := $(shell id -u)
GID     := $(shell id -g)

IMAGE   ?= asciidoc-toolchain:latest
ADOC    ?= out/04.software-requirements.adoc
PDF     ?= $(basename $(ADOC)).pdf

DCK_WD   = /workspace
HST_WD   = $(CURDIR)
ADOC_DIR = $(patsubst $(HST_WD)/%,%,$(dir $(ADOC)))
ADOC_DIR := $(patsubst ./%,%,$(ADOC_DIR))


# Optional export metadata
# VER ?= 1.0.0
# ADOC_REVDATE ?=


DOCKER_RUN = docker run --rm -u $(UID):$(GID) \
	--volume "$(HST_WD)/$(ADOC_DIR):$(DCK_WD)/$(ADOC_DIR)" \
	--workdir "$(DCK_WD)" \
	-e XDG_CACHE_HOME="/tmp" \
	$(if $(VER),-e ADOC_REVNUMBER="$(VER)") \
	$(if $(ADOC_REVDATE),-e ADOC_REVDATE="$(ADOC_REVDATE)") \
	$(IMAGE)

.PHONY: help
help:
	@echo "Targets: image html pdf docx all watch-html watch-pdf watch-docx"
	@echo "Vars: IMAGE, ADOC (filename), VER, DATE"
	@echo "Example: make pdf ADOC=out/foo.adoc VER=1.2.3 ADOC_REVDATE=2024-06-01"

.PHONY: image
image:
	@ cd docker && docker build -t $(IMAGE) .

.PHONY: ensure-image
ensure-image:
	@ (docker image inspect $(IMAGE) >/dev/null 2>&1 && echo "Docker image '$(IMAGE)' exists") \
		|| make image 


.PHONY: pdf
pdf: ensure-image
	@$(DOCKER_RUN) pdf "$(ADOC)" --out "$(ADOC_DIR)"
	@open "$(PDF)"
