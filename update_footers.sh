#!/bin/bash

# Pages that need to be updated
PAGES=(
  "pages/home.html"
  "pages/courses.html"
  "pages/journal.html"
  "pages/profile.html"
  "pages/coaching.html"
  "pages/settings.html"
  "pages/workshop.html"
)

for page in "${PAGES[@]}"; do
  echo "Updating footer in $page..."
  
  # Fix footer iframe
  sed -i '' -e 's/<iframe src="..\/components\/footer.html" class="w-full border-0">/<iframe src="..\/components\/footer.html" class="w-full border-0" style="height: 60px; margin: 0; padding: 0; position: fixed; bottom: 0; left: 0; right: 0;">/' "$page"
  
  # Add margin-bottom to main content to prevent overlap with footer
  sed -i '' -e '/<main/s/pb-16/pb-20/' "$page"
  
  echo "Finished updating $page"
done

echo "All footers updated successfully!" 