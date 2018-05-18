include Makefile.help.mk

test: ## Execute tests suite
	@bats --tap tests

