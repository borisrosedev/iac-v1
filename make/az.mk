.PHONY: az.adapplist
az.applist: guard-DISPLAY_NAME
	$(call log,⬇ Ad apps list ...)
	@az ad app list --filter "displayname eq '$(DISPLAY_NAME)'"
