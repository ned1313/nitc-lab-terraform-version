#!/bin/bash
# Check that terraform is installed and the version command works
if terraform --version > /dev/null 2>&1; then
    echo "Terraform is installed: $(terraform --version | head -1)"
    exit 0
else
    echo "Terraform is not installed or not in PATH"
    exit 1
fi
