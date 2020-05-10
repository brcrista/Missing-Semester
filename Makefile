.PHONY: proselint
proselint:
	find . -name *.md -exec proselint {} +
