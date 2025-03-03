.PHONY: init plan apply destroy
.ONESHELL:
.SHELL := /bin/ash

# Check necessary tools
ifeq (, $(shell which aws))
	$(error "No aws in $(PATH), consider installing awscli")
endif
ifeq (, $(shell which terraform))
	$(error "No terraform in $(PATH), consider installing terraform")
endif

LAYER := $(shell basename $(CURDIR))

check-env:
ifndef CLIENT
	$(error CLIENT is undefined)
endif
ifndef APP
	$(error APP is undefined)
endif
ifndef ENV_TYPE
	$(error ENV_TYPE is undefined)
endif
ifndef ENV
	$(error ENV is undefined)
endif
	@echo "Using CLIENT=$(CLIENT) APP=$(APP) ENV_TYPE=$(ENV_TYPE) ENV=$(ENV) LAYER=$(LAYER) ENV_PATH=$(ENV_PATH)"

init: check-env
	@echo "Initializing terraform"
	terraform init -backend-config="$(ENV_PATH)/$(CLIENT)/$(APP)/$(ENV_TYPE)/$(ENV)/$(LAYER).tfbackend" -reconfigure

plan: check-env init
	@echo "Planning terraform"
	terraform plan -var-file="$(ENV_PATH)/$(CLIENT)/$(APP)/$(ENV_TYPE)/$(ENV)/$(LAYER).tfvars"

apply: check-env init
	@echo "Applying terraform"
	terraform apply -var-file="$(ENV_PATH)/$(CLIENT)/$(APP)/$(ENV_TYPE)/$(ENV)/$(LAYER).tfvars" -auto-approve

destroy: check-env init
	@echo "Destroying terraform"
	terraform destroy -var-file="$(ENV_PATH)/$(CLIENT)/$(APP)/$(ENV_TYPE)/$(ENV)/$(LAYER).tfvars" -auto-approve
