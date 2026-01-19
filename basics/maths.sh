#!/bin/bash
# maths.sh - Demonstrates basic math in Bash
#
# NOTE:
# This script intentionally shows a COMMON MISTAKE when using `expr`
# (forgetting to escape `*`), explains why it fails, and then shows
# the correct and modern approaches.

set -euo pipefail

echo "=== Basic math using expr ==="
expr 100 + 11
expr 100 - 11
expr 100 / 10

echo
echo "=== Common mistake (this will FAIL) ==="
echo "Running: expr 100 * 2"
echo "Reason: '*' is expanded by the shell before expr runs"

# Intentionally incorrect usage to demonstrate globbing
# This will error if files exist in the directory
expr 100 * 2 2>/dev/null || echo "Error occurred due to glob expansion (*)"

echo
echo "What '*' expands to in this directory:" 
echo *

echo
echo "=== Correct usage with expr ==="
echo "Escaping '*' so the shell does not expand it"
expr 100 \* 2

echo
echo "=== Using variables with expr ==="
mynum=100
expr "$mynum" + 50
echo "The sum of both numbers is $(expr "$mynum" + 50)"

echo
echo "=== Modern Bash way (recommended) ==="
echo $((100 + 11))
echo $((100 - 11))
echo $((100 / 10))
echo $((100 * 2))
echo "The sum of both numbers is $((mynum + 50))"

echo
echo "=== Takeaway ==="
echo "- '*' is a glob character and must be escaped when using expr"
echo "- expr is error-prone and mostly historical"
echo "- Prefer arithmetic expansion: \$(( ... )) in modern Bash"
