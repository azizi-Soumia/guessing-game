
.PHONY: all FORCE

all: README.md

README.md: FORCE
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Project Information" >> README.md
	@echo "" >> README.md
	@echo "- **Date and time:** $$(date)" >> README.md
	@echo "- **Lines of code:** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description" >> README.md
	@echo "A Bash game that asks the user to guess the number of files in the current directory." >> README.md

FORCE:
