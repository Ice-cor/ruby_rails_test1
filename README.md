# README

## 开发配置

### 数据库创建
```
// 系统命令行输入以下代码启动数据库
docker start db-for-mangosteen

// 创建表
bin/rails db:migrate

// 回滚表
bin/rails db:rollback

// 创建controller
bin/rails g controller validation_codes

```