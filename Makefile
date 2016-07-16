#
# FRONT-END-SCRIPTS
#

ACTUAL_DIR = $(shell pwd)

# Gets from shell the operating system
OS := $(shell uname -s)

# Shell program
SHELL = /bin/bash

# Color presets
COLOR_RESET = \033[0m
COLOR_GREEN = \033[32m
COLOR_YELLOW = \033[33m
COLOR_RED = \033[31m

# get scripts files
SCRIPTS_DIR := $(ACTUAL_DIR)/scripts
SCRIPTS_EXT := sh
SCRIPTS_NAMES := $(notdir $(basename $(wildcard $(SCRIPTS_DIR)/*.$(SCRIPTS_EXT))))
SCRIPTS := $(patsubst %,$(SCRIPTS_DIR)/%.$(SCRIPTS_EXT),$(SCRIPTS_NAMES))

all: install

install: $(SCRIPTS)
		for file in $^; do echo "1" + $$file; done

