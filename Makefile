# Makefile

SCSS_DIR = ./scss
CSS_DIR = ./css
SCSS_FILES = $(wildcard $(SCSS_DIR)/*.scss)
CSS_FILES = $(patsubst $(SCSS_DIR)/%.scss, $(CSS_DIR)/%.css, $(SCSS_FILES))

all: $(CSS_FILES)

# Compile CSS Files
$(CSS_DIR)/%.css: $(SCSS_DIR)/%.scss
	mkdir -p $(CSS_DIR)
	npx sass $< $@

clean:
	rm -rf $(CSS_DIR)

.PHONY: all clean
