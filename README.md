---
id:doc1
title:文档
---



# docusaurus-doc-test

Docusaurus makes it easy to maintain Open Source documentation websites.

## 如何使用

#### 一.目录结构如下：

```
|---mydocs             
|     |---mydoc1.md   //你的md文件（input YAML Front Matter）
|     |---mydoc2.md
|     |---mydoc3.md
|---img
|     |---test.png    //你的md文件中插入的图片
|---Dockerfile
|---sidebars.json
```

##### 1.像这样写你的sidebars.json

```json
{
  "docs": {
    "分组一": ["doc1"],//doc1，doc2，doc3，doc4，doc5是md文件的id
    "分组二": ["doc2"],
    "分组三": ["doc3"],
  },
  "docs-other": {
    "First Category": ["doc4", "doc5"]
  }
}
```



##### 2.像这样写你的Dockerfile:

```dockerfile
FROM luck135246/docusaurus-doc-test:v1
COPY mydocs/ /app/docs
COPY img/  /app/website/static/img
COPY ./sidebars.json /app/website/sidebars.json
 
CMD ["yarn","start"]

```

```
docker build -t mytest:v1 .
```

##### 

```
docker run --rm -p 3003:3000 mytest:v1
```

##### 3.访问

http://localhost:3003

