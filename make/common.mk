.ONESHELL:
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c
MAKEFLAGS := --warn-undefined-variables
# =======================================
ENV ?= dev
INFRA_DIR := infra
INFRA_ENV_DIR := $(INFRA_DIR)/envs/$(ENV)
# =======================================
INFO_COLOR := \033[36;1m
ERROR_COLOR := \033[31;1m
NO_COLOR := \033[0m
# ==============

define log
	printf "$(INFO_COLOR)$(1)$(NO_COLOR)\n"
endef

guard-%:
	@[ -n "$($*)" ] || { echo -e "\n$(ERROR_COLOR)$* is MANDATORY $(NO_COLOR)\n"; exit 1; }
