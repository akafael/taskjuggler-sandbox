##
# Taskjuggler Common Task
##


# -- Variables ----------------------------------------------------------------
OUTPUT_DIR := docs
SRC_DIR := src
SRC_FILES := $(wildcard ${SRC_DIR},*.tji)

# -- Rules --------------------------------------------------------------------

# One Rule to rule them all
.PHONY: all
all: report

# Ensure Output Dir
${OUTPUT_DIR}:
	mkdir -p $@

# Generate Reports
.PHONY: report
report: src/main.tjp ${SRC_FILES} ${OUTPUT_DIR}
	tj3 $< --output-dir ${OUTPUT_DIR}

# Remove generated files
.PHONY: clean
clean:
	-rm -rfv ${OUTPUT_DIR}

