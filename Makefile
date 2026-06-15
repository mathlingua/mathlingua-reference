MLGBOOK_DIR ?= ~/Developer/mathlingua/mlgBook
MDBOOK ?= $(MLGBOOK_DIR)/target/debug/mdbook

.PHONY: mlgbook build serve check clean

mlgbook:
	cargo build --manifest-path $(MLGBOOK_DIR)/Cargo.toml --bin mdbook

build: mlgbook
	$(MDBOOK) build

serve: mlgbook
	$(MDBOOK) serve --open

check: mlgbook
	$(MDBOOK) check

clean: mlgbook
	$(MDBOOK) clean
