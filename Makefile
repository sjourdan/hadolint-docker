.DEFAULT_GOAL := help
DOCKER_USER=sjourdan
PRODUCT=hadolint

build: ## Build Container
	docker build -t $(DOCKER_USER)/$(PRODUCT) .

lint: ## Lint Docker
	docker run --rm -v $$PWD:/root/ projectatomic/dockerfile-lint dockerfile_lint
	docker run -i --rm sjourdan/hadolint < Dockerfile

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
