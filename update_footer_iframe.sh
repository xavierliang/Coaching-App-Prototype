#!/bin/bash

# 要更新的页面列表
PAGES=(
  "pages/home.html"
  "pages/workshop.html"
  "pages/coaching.html"
  "pages/profile.html"
  "pages/journal.html"
  "pages/settings.html"
)

for page in "${PAGES[@]}"; do
  echo "更新 $page 中的底部导航..."
  
  # 向<head>样式部分添加footer-iframe类
  sed -i '' -e '/<style>/,/<\/style>/s/<\/style>/    .footer-iframe {\
            position: fixed;\
            bottom: 0;\
            left: 0;\
            right: 0;\
            height: 60px;\
            margin: 0;\
            padding: 0;\
            z-index: 50;\
            border: none;\
        }\
    <\/style>/' "$page"
  
  # 替换底部导航iframe
  sed -i '' -e 's/<iframe src="..\/components\/footer.html" class="w-full border-0" style="height: 60px; margin: 0; padding: 0; position: fixed; bottom: 0; left: 0; right: 0;"><\/iframe>/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/' "$page"
  
  echo "$page 更新完成"
done

echo "所有页面更新完成!" 