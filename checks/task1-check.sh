#!/bin/bash
# Check that the student actually ran a terraform version command
HISTFILE="/home/labuser/.bash_history"

if [ ! -f "$HISTFILE" ]; then
  echo "No command history found. Open a terminal and run: terraform --version"
  exit 1
fi

if grep -qE '^terraform\s+(--?version|-v)\s*$' "$HISTFILE"; then
  echo "Terraform version command found in history: $(terraform --version | head -1)"
  exit 0
else
  echo "terraform --version not found in your command history. Please run it in the terminal."
  exit 1
fi
