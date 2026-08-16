.PHONY: tf.fmt
tf.fmt: ## effectively formats the terraform code
	@terraform -chdir=$(INFRA_DIR) fmt -recursive -diff
