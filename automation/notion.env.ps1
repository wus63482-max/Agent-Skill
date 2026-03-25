# Notion 集成密钥
# 填你在 Notion integrations 页面拿到的 Internal Integration Token
$env:NOTION_TOKEN = "YOUR_NOTION_TOKEN_HERE"

# Notion 起号日历数据库 ID
# 从数据库页面链接里复制 32 位 ID
$env:NOTION_DATABASE_ID = "22c4062a50ec81ad9b27e39c3685df41"

# 日历数据库里的“日期字段”名称
# 例: Date / 日期 / 发布时间
$env:NOTION_DATE_PROPERTY = "日期"

# 日历数据库里的“标题字段”名称
# 一般是 Name，也可能是 标题 / 任务名
$env:NOTION_TITLE_PROPERTY = "名称"
