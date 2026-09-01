# 家庭奥数教案仓库

在家里和公司都能对教案进行增补的 git 仓库。

## 包含项目

- `奥数教案/` —— 四升五奥数，36 课时（部分已填充）
- `数学教案_二升三/` —— 二升三奥数，24 课时（部分已填充）

## 使用流程

```bash
# 本机（第一次）
cd 教案仓库
git add .
git commit -m "初始化教案仓库"
git remote add origin <你的远程仓库地址>
git push -u origin main

# 之后每次改动
git add .
git commit -m "新增课时XX / 修改..."
git push

# 另一台电脑拉取最新
git pull
```
