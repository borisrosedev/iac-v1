.PHONY: pre
pre.update:
	@pre-commit autoupdate
pre:
	$(call log,🚀 Testing Pre-Commit ...)
	@pre-commit run --all-files
