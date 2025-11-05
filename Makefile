.PHONY: validate-config
validate-config:
	@docker compose -f validate/docker-compose.yml run --rm configarr
