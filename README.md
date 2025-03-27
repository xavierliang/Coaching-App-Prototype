# Life Coaching App Prototype

这是一个引导学员做出人生重大决定或改变的教练型 App 原型。该应用采用 bootcamp 形式，结合 workshop 和一对一教练课程，提供结构化的学习体验。

## 项目结构

```
├── index.html              # 主入口页面
├── assets/                 # 静态资源目录
│   ├── css/               # 样式文件
│   ├── js/                # JavaScript 文件
│   └── images/            # 图片资源
├── pages/                 # 页面组件
│   ├── home.html          # 首页
│   ├── profile.html       # 个人资料
│   ├── courses.html       # 课程列表
│   ├── workshop.html      # 工作坊
│   ├── coaching.html      # 教练课程
│   ├── journal.html       # 学习笔记
│   └── settings.html      # 设置
└── components/            # 可复用组件
    ├── header.html        # 顶部导航
    ├── footer.html        # 底部导航
    └── status-bar.html    # 状态栏
```

## 技术栈

- HTML5
- Tailwind CSS
- FontAwesome
- JavaScript (原生)

## 开发指南

1. 克隆项目到本地
2. 使用现代浏览器打开 index.html
3. 所有页面都会在 index.html 中通过 iframe 方式展示
4. 界面设计遵循 iOS/Android 设计规范
5. 使用 iPhone 15 Pro 的尺寸作为基准设计尺寸

## 功能模块

1. 用户认证
   - 登录/注册
   - 个人资料管理

2. 课程系统
   - 课程列表
   - 课程详情
   - 学习进度追踪

3. 工作坊
   - 工作坊列表
   - 工作坊详情
   - 互动练习

4. 教练课程
   - 教练列表
   - 预约系统
   - 课程记录

5. 学习笔记
   - 笔记编辑器
   - 笔记分类
   - 笔记分享

6. 设置
   - 账号设置
   - 通知设置
   - 隐私设置 