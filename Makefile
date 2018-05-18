include Makefile.help.mk

test: ## Execute tests suitel
	@bats --tap tests/dummy.bats
	@bats --tap tests/minimal.bats
	@bats --tap tests/simple.bats

