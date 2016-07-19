#
# FRONT-END-SCRIPTS
#

ACTUAL_DIR = $(shell pwd)

# Gets from shell the operating system
OS := $(shell uname -s)

# Shell program
SHELL = /bin/bash

# get scripts files
SCRIPTS_DIR := $(ACTUAL_DIR)/scripts
SCRIPTS_EXT := sh
SCRIPTS_NAMES := $(notdir $(basename $(wildcard $(SCRIPTS_DIR)/*.$(SCRIPTS_EXT))))
SCRIPTS := $(patsubst %,$(SCRIPTS_DIR)/%.$(SCRIPTS_EXT),$(SCRIPTS_NAMES))

all: install

install: $(SCRIPTS)
		for file in $^; do chmod +x $$file; done
		sh ./front-end-scripts.sh

