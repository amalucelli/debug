.PHONY: build
build:
	@docker build \
		--tag amalucelli/debug \
		--file Dockerfile \
		$(CURDIR)

.PHONY: push
push:
	@docker push amalucelli/debug
