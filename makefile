FLUTTER = flutter
DART = dart

.PHONY: generate
generate:
	$(DART) run build_runner build --delete-conflicting-outputs
	$(DART) format .


.PHONY: lint
lint:
	$(FLUTTER) analyze

.PHONY: lint-watch
lint-watch:
	$(FLUTTER) analyze --watch


.PHONY: test
test:
	$(FLUTTER) test

.PHONY: fix_lint
fix_lint:
	$(DART) fix --apply
	$(DART) format .

.PHONY: test_coverage
test_coverage:
	$(FLUTTER) test --coverage
	genhtml coverage/lcov.info -o coverage/html
	open coverage/html/index.html

