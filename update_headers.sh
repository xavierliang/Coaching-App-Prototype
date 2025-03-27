#!/bin/bash

# Pages that need to be updated
PAGES=(
  "pages/courses.html"
  "pages/journal.html"
  "pages/profile.html"
  "pages/coaching.html"
  "pages/settings.html"
  "pages/workshop.html"
)

for page in "${PAGES[@]}"; do
  echo "Updating $page..."
  
  # Replace iframe header with inline header
  sed -i '' -e '/<iframe src="..\/components\/header.html"/,/<\/iframe>/c\
    <!-- 内联顶部导航，不使用iframe -->\
    <div class="header-container">\
        <h1 class="text-lg font-semibold text-gray-800">Life Coach</h1>\
        <div class="flex items-center space-x-4">\
            <button class="text-gray-600 hover:text-gray-800">\
                <i class="fas fa-bell text-lg"></i>\
            </button>\
            <button class="text-gray-600 hover:text-gray-800">\
                <i class="fas fa-search text-lg"></i>\
            </button>\
        </div>\
    </div>' "$page"
  
  # Add CSS styles for header
  sed -i '' -e '/<link rel="stylesheet" href="https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/font-awesome\/6.5.1\/css\/all.min.css">/a\
    <style>\
        body, html { margin: 0; padding: 0; }\
        .header-container { \
            padding: 0 1rem; \
            margin: 0;\
            height: 40px;\
            display: flex;\
            align-items: center;\
            justify-content: space-between;\
            background-color: white;\
            border-bottom: 1px solid #e5e7eb;\
        }\
    </style>' "$page"
  
  # Fix status bar iframe
  sed -i '' -e 's/<iframe src="..\/components\/status-bar.html" class="w-full border-0">/<iframe src="..\/components\/status-bar.html" class="w-full border-0" style="height: 20px; margin: 0; padding: 0;">/' "$page"
  
  echo "Finished updating $page"
done

echo "All pages updated successfully!" 