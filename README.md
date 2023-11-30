# README

## 开发配置

### 数据库创建
```
// 系统命令行输入以下代码启动数据库
docker start db-for-mangosteen

// 创建测试环境的数据库
 RAILS_ENV=test bin/rails db:create

// 创建表
bin/rails db:migrate

// 创建model
bin/rails g model item user_id:integer amount:integer notes:text tags_id:integer happened_at:datetime

// 回滚表
bin/rails db:rollback

// 创建controller
bin/rails g controller validation_codes
bin/rails g controller home index // 创建home下

### rails 代码,
// 进入测试模式，可以跑代码
bin/rails console
```