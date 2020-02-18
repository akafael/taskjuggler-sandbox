##
# Taskjuggler Common Task
##


# -- Variables ----------------------------------------------------------------
OUTPUT_DIR := docs


# -- Rules --------------------------------------------------------------------

# One Rule to rule them all
.PHONY: all
all: report

# Ensure Output Dir
${OUTPUT_DIR}:
	mkdir $@

# Generate Reports
.PHONY: report
report: src/template.tjp ${OUTPUT_DIR}
	tj3 $< --output-dir ${OUTPUT_DIR}

# Remove generated files
.PHONY: clean
clean:
	-rm -rfv ${OUTPUT_DIR}

