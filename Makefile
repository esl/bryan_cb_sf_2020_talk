.PHONY: run_postgres 

run_postgres: 
	docker run --rm \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_DB=postgres \
		-e POSTGRES_PASSWORD=postgres \
		--name airline_postgres \
		--hostname airline_postgres \
		-p 5432:5432 postgres

## append command may be useful someday - only works with gsed
patch_postgres_port:
	 gsed -i'' '/show_sensitive_data_on_/a    port: 15432,' config/dev.exs
