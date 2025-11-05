.PHONY: validate-config
validate-config:
	@docker compose run --rm configarr
