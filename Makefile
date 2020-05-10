.PHONY: proselint
proselint:
	find . -name "*.md" -not -path "*/lecture7/pdb-tutorial/*" -exec proselint {} +
