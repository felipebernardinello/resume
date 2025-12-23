RM = rm -f
ifeq ($(OS),Windows_NT)
	RM = del /f /q
endif

IMAGE_NAME = bearsume
TEX_FILE = bearsume
TEX_SOURCES = $(TEX_FILE).tex lib/commands.sty lib/lua_parsing.lua

PDF_FILE = $(TEX_FILE).pdf


.PHONY: help pdf clean nuke build

help:
	@echo "Available commands:"
	@echo "  make pdf    (Compiles the PDF)"
	@echo "  make clean  (Removes temp files and PDF)"
	@echo "  make nuke   (Cleans and removes the Docker image)"

pdf: $(PDF_FILE)

$(PDF_FILE): $(TEX_SOURCES) build
	@docker run --rm -v "$(CURDIR)":/data $(IMAGE_NAME)
	@docker run --rm -v "$(CURDIR)":/data $(IMAGE_NAME)

build: .image_built

.image_built: Dockerfile
	@docker build -t $(IMAGE_NAME) .
	@echo "lock" > .image_built

clean:
	-@$(RM) *.aux *.log *.out *.fls *.fdb_latexmk
	-@$(RM) $(PDF_FILE)

nuke: clean
	-@docker rmi $(IMAGE_NAME) || true
	-@$(RM) .image_built