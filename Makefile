.PHONY: config-validate config-apply stop
config-validate:
	@docker compose -f validate/compose.yaml run --rm configarr

config-apply:
	@docker compose -f validate/compose.yaml run --rm -e DRY_RUN=false configarr

stop:
	@docker compose -f validate/compose.yaml down
