docs:
	for dir in */; do cd $dir; terraform-docs markdown . > README.md; cd -; done

encrypt:
	test -f envs/prod.tfvars && git secret hide -F
	rm -vf envs/prod.tfvars

pre-commit-init:
	pre-commit install

pre-commit-update:
	pre-commit autoupdate

decrypt:
	test -f envs/prod.tfvars && false || true
	test -f envs/prod.tfvars.secret && git secret reveal -f || true

tf-init:
	terraform init -upgrade

tf-plan-prod: decrypt _plan_prod encrypt

tf-apply-prod: decrypt _apply_prod encrypt

tf-apply-force-prod: decrypt _apply_force_prod encrypt

tf-destroy-prod: decrypt _destroy_prod encrypt

_plan_prod:
	terraform workspace select prod && terraform plan -var-file=envs/prod.tfvars

_apply_prod:
	terraform workspace select prod && terraform apply -var-file=envs/prod.tfvars

_apply_force_prod:
	terraform workspace select prod && terraform apply -auto-approve -var-file=envs/prod.tfvars

_destroy_prod:
	terraform workspace select prod && terraform destroy -var-file=envs/prod.tfvars
