#!/bin/bash

# 基础导航HTML代码，$ACTIVE_TAB会被替换为当前页面对应的导航项
NAV_HTML='<!-- 底部导航栏 -->
<div class="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 z-40" style="height: 60px;">
    <div class="flex justify-around items-center h-full">
        <a href="../pages/home.html" class="flex flex-col items-center $HOME_COLOR">
            <i class="fas fa-home text-xl"></i>
            <span class="text-xs mt-1">首页</span>
        </a>
        <a href="../pages/courses.html" class="flex flex-col items-center $COURSES_COLOR">
            <i class="fas fa-book text-xl"></i>
            <span class="text-xs mt-1">课程</span>
        </a>
        <a href="../pages/workshop.html" class="flex flex-col items-center $WORKSHOP_COLOR">
            <i class="fas fa-users text-xl"></i>
            <span class="text-xs mt-1">工作坊</span>
        </a>
        <a href="../pages/coaching.html" class="flex flex-col items-center $COACHING_COLOR">
            <i class="fas fa-user-tie text-xl"></i>
            <span class="text-xs mt-1">教练</span>
        </a>
        <a href="../pages/profile.html" class="flex flex-col items-center $PROFILE_COLOR">
            <i class="fas fa-user text-xl"></i>
            <span class="text-xs mt-1">我的</span>
        </a>
    </div>
</div>'

# 更新每个页面
echo "更新首页导航..."
HOME_NAV=${NAV_HTML/\$HOME_COLOR/text-blue-500}
HOME_NAV=${HOME_NAV/\$COURSES_COLOR/text-gray-500}
HOME_NAV=${HOME_NAV/\$WORKSHOP_COLOR/text-gray-500}
HOME_NAV=${HOME_NAV/\$COACHING_COLOR/text-gray-500}
HOME_NAV=${HOME_NAV/\$PROFILE_COLOR/text-gray-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$HOME_NAV"'' "pages/home.html"

echo "更新课程页导航..."
COURSES_NAV=${NAV_HTML/\$HOME_COLOR/text-gray-500}
COURSES_NAV=${COURSES_NAV/\$COURSES_COLOR/text-blue-500}
COURSES_NAV=${COURSES_NAV/\$WORKSHOP_COLOR/text-gray-500}
COURSES_NAV=${COURSES_NAV/\$COACHING_COLOR/text-gray-500}
COURSES_NAV=${COURSES_NAV/\$PROFILE_COLOR/text-gray-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$COURSES_NAV"'' "pages/courses.html"

echo "更新工作坊页导航..."
WORKSHOP_NAV=${NAV_HTML/\$HOME_COLOR/text-gray-500}
WORKSHOP_NAV=${WORKSHOP_NAV/\$COURSES_COLOR/text-gray-500}
WORKSHOP_NAV=${WORKSHOP_NAV/\$WORKSHOP_COLOR/text-blue-500}
WORKSHOP_NAV=${WORKSHOP_NAV/\$COACHING_COLOR/text-gray-500}
WORKSHOP_NAV=${WORKSHOP_NAV/\$PROFILE_COLOR/text-gray-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$WORKSHOP_NAV"'' "pages/workshop.html"

echo "更新教练页导航..."
COACHING_NAV=${NAV_HTML/\$HOME_COLOR/text-gray-500}
COACHING_NAV=${COACHING_NAV/\$COURSES_COLOR/text-gray-500}
COACHING_NAV=${COACHING_NAV/\$WORKSHOP_COLOR/text-gray-500}
COACHING_NAV=${COACHING_NAV/\$COACHING_COLOR/text-blue-500}
COACHING_NAV=${COACHING_NAV/\$PROFILE_COLOR/text-gray-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$COACHING_NAV"'' "pages/coaching.html"

echo "更新个人资料页导航..."
PROFILE_NAV=${NAV_HTML/\$HOME_COLOR/text-gray-500}
PROFILE_NAV=${PROFILE_NAV/\$COURSES_COLOR/text-gray-500}
PROFILE_NAV=${PROFILE_NAV/\$WORKSHOP_COLOR/text-gray-500}
PROFILE_NAV=${PROFILE_NAV/\$COACHING_COLOR/text-gray-500}
PROFILE_NAV=${PROFILE_NAV/\$PROFILE_COLOR/text-blue-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$PROFILE_NAV"'' "pages/profile.html"

echo "更新设置页导航..."
SETTINGS_NAV=${NAV_HTML/\$HOME_COLOR/text-gray-500}
SETTINGS_NAV=${SETTINGS_NAV/\$COURSES_COLOR/text-gray-500}
SETTINGS_NAV=${SETTINGS_NAV/\$WORKSHOP_COLOR/text-gray-500}
SETTINGS_NAV=${SETTINGS_NAV/\$COACHING_COLOR/text-gray-500}
SETTINGS_NAV=${SETTINGS_NAV/\$PROFILE_COLOR/text-blue-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$SETTINGS_NAV"'' "pages/settings.html"

echo "更新学习笔记页导航..."
JOURNAL_NAV=${NAV_HTML/\$HOME_COLOR/text-gray-500}
JOURNAL_NAV=${JOURNAL_NAV/\$COURSES_COLOR/text-gray-500}
JOURNAL_NAV=${JOURNAL_NAV/\$WORKSHOP_COLOR/text-gray-500}
JOURNAL_NAV=${JOURNAL_NAV/\$COACHING_COLOR/text-gray-500}
JOURNAL_NAV=${JOURNAL_NAV/\$PROFILE_COLOR/text-blue-500}
sed -i '' -e '/<iframe src="..\/components\/footer.html" class="footer-iframe"><\/iframe>/c\
'"$JOURNAL_NAV"'' "pages/journal.html"

echo "所有页面导航更新完成!" 