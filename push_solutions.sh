#!/bin/bash
# Simple script to save and push Coderbyte solutions

echo "Enter challenge name:"
read name

# Create a solutions folder if it doesn't exist
mkdir -p solutions

# Save pasted code into a file named after the challenge
file="solutions/${name}.py"
echo "Paste your code below (Ctrl+D to finish):"
cat > $file

# Add, commit, and push to GitHub
git add $file
git commit -m "Add solution for $name"
git push
