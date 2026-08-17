.PHONY: tf.fmt tflint.check tflint.fix tf.validate tf.fmt.check \
tf.init tf.plan tf.plan.json trivy.plan.check tf.apply

tf.init:
	@terraform -chdir=$(INFRA_ENV_DIR) init -input=false -lock=true -upgrade
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
tf.plan:
	@terraform -chdir=$(INFRA_ENV_DIR) plan --out tfplan -var-file=$(TF_VARS_FILE)
tf.plan.json: ## trivy cannot read the binary plan, it needs the JSON rendering
	@terraform -chdir=$(INFRA_ENV_DIR) show -json tfplan > $(INFRA_ENV_DIR)/tfplan.json
trivy.plan.check: tf.plan.json
	@cd $(INFRA_ENV_DIR) && trivy config --severity CRITICAL,HIGH --exit-code 1 tfplan.json
tf.apply:
	@terraform -chdir=$(INFRA_ENV_DIR) apply tfplan
tf.out:
	@terraform -chdir=$(INFRA_ENV_DIR) output
