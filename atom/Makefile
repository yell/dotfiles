backup:
	find ~/.atom -maxdepth 1 -type f ! -name '.*' ! -name *projects.cson | xargs cp --target-directory=.atom
	apm list --installed --bare > packages.list

restore:
	cp .atom/* ~/.atom

install:
	apm install --packages-file packages.list
	# OR apm install `cat packages.list`

.PHONY: *
