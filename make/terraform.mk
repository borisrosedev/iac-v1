.PHONY: tf.fmt tflint.check tflint.fix tf.validate tf.fmt.check \
tf.init

tf.init:
	@terraform -chdir=$(INFRA_ENV_DIR) -input=false -lock=true -upgrade
tf.fmt: ## effectively formats the terraform code
	@terraform -chdir=$(INFRA_DIR) fmt -recursive -diff
tf.fmt.check:
	@terraform -chdir=$(INFRA_DIR) fmt -recursive -check
tflint.check:
	@tflint --chdir=$(INFRA_DIR) --config=$(TFLINT_CONFIG_FILE) --recursive
tflint.fix:
	@tflint --chdir=$(INFRA_DIR) --config=$(TFLINT_CONFIG_FILE) --recursive --fix
tf.validate:
	@terraform -chdir=$(INFRA_ENV_DIR) validate
