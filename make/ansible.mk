.PHONY: boiler
boiler:
	$(call log,🚀 Running init.yml ...)
	ansible-playbook init.yml
