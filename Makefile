.PHONY: validate-config stop
validate-config:
	@docker compose -f validate/docker-compose.yml run --rm configarr

stop:
	@docker compose -f validate/docker-compose.yml down
