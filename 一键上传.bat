@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ================================================
echo   教案仓库一键上传脚本
echo ================================================

REM ===== 请先修改下面 3 个值 =====
set MY_NAME=你的GitHub用户名
set MY_EMAIL=你的GitHub邮箱
set REMOTE_URL=https://github.com/nedkelley/aoshuplan.git
REM ================================

echo.
echo [1/5] 检查 git 是否已安装...
git --version || (echo 未找到 git，请先安装 Git for Windows 并重启电脑 & pause & exit /b 1)

echo.
echo [2/5] 初始化仓库...
if not exist ".git" (
    git init
) else (
    echo 已是 git 仓库，跳过 init
)

echo.
echo [3/5] 设置身份...
git config user.name "%MY_NAME%"
git config user.email "%MY_EMAIL%"

echo.
echo [4/5] 添加并提交所有文件...
git add .
git commit -m "教案更新"

echo.
echo [5/5] 关联远程仓库并推送...
git remote remove origin 2>nul
git remote add origin "%REMOTE_URL%"
git branch -M main
git push -u origin main

echo.
echo ================================================
echo   完成！若推送失败，请检查：
echo   1. REMOTE_URL 是否正确
echo   2. GitHub 是否已创建空白仓库 aoshuplan
echo   3. 是否已登录 GitHub 账号 / 配置令牌
echo ================================================
pause
