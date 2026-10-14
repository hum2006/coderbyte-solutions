#!/bin/bash
# Save and push Coderbyte solutions automatically

echo "Enter challenge name:"
read name

mkdir -p solutions

# Replace spaces with underscores for safe filenames
safe_name=$(echo "$name" | tr ' ' '_')
file="solutions/${safe_name}.py"

echo "Paste your code below (Ctrl+D to finish):"
cat > "$file"

git add "$file"
git commit -m "Add solution for $name"
git push origin main
