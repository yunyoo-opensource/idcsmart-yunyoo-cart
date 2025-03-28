# 魔方财务 YUNYOO 购物车模板

Language: 简体中文 | [English](README.en.md)

![1](https://github.com/user-attachments/assets/b5b43692-197c-44b2-8814-164144deb5d6)



## 介绍

YUNYOO Themes 是一款基于魔方财务系统的主题模板。拥有直观简洁的界面设计，在简洁的同时保持顺畅的使用体验。

YUNYOO Themes 开源免费，采用 Apache License 2.0 许可证，您可以自由的使用和修改。

YUNYOO Themes 会持续维护更新和优化完善，不断提供更多的新功能和新特性。

***目前该模板为初始版本，还在继续完善中 :）**



## 演示

- [购物车](https://yunyoo.cc/cart)



## 截图

| [用户中心](https://github.com/yunyoo-opensource/idcsmart-yunyoo-clientarea) | 购物车 | 
| --- | --- |
| ![2](https://github.com/user-attachments/assets/bbebd6f8-05a3-4a38-b949-b902c5a300f4) | ![3](https://github.com/user-attachments/assets/47366b58-00c2-4040-93c4-6223cdacebed) |

| [登陆页](https://github.com/yunyoo-opensource/idcsmart-yunyoo-clientarea) | [注册页](https://github.com/yunyoo-opensource/idcsmart-yunyoo-clientarea) | 
| --- | --- |
| ![4](https://github.com/user-attachments/assets/6eb3c84b-2351-433a-822f-f1903973f014) |  ![5](https://github.com/user-attachments/assets/827f77d3-c6d6-45eb-88b2-bdc78d8da6c8) |



## 特点

- **简洁易用**：直观界面设计，简化操作流程。
- **优雅美观**：顺畅交互体验，现代视觉风格。
- **开源免费**：遵循开源协议，自由使用修改。



## 快速开始

### 安装

1. 将所有文件复制到 魔方财务 安装目录下的 `/public/themes/cart` 目录
2. 通过您的后台修改模板为 `yunyoo`

⚠️ 注意: 
- **购物车(cart)模板 必须搭配 [用户中心(clientarea)](https://github.com/yunyoo-opensource/idcsmart-yunyoo-clientarea)模板 一起使用,否则会出现样式错误。**
- **以下配置步骤必须操作，否则将无法正常显示内容。**

### 配置

- 在 后台 -> 设置 -> 站务设置 -> 官网自定义字段 -> 添加字段
  
    | 字段名         | 字段内容 |
    | -------------- | -------- |
    | `yunyoo_twemojiurl` | `https://cdnjs.cloudflare.com/ajax/libs/twemoji/15.1.0/svg/` |
    
- 商品分组配置
    | 分组         | 方法 | 例子 |
    | -------------- | -------- | --------- |
    | 一级分组 | `主标题,副标题,图标样式` | `CVM,经典型云服务器,fa-4x fa-server fa-solid m-2 invisible w-0` |
    | 二级分组 | `主标题,副标题,旗帜样式,旗帜Emoji编码` | `美国一区,美国Kurun 精品线路 (US1),m-2 yy-img-w,1f1fa-1f1f8` |



> 图标样式与旗帜样式无需修改，直接复制进分组名称即可。
> 
> 旗帜[样式选取](https://twemoji-cheatsheet.vercel.app/) ，将对应图标的HEX填至`旗帜Emoji编码`内。


## 更多

- 配套的用户中心模板：[idcsmart-yunyoo-clientarea](https://github.com/yunyoo-opensource/idcsmart-yunyoo-clientarea)



## 联系

- 邮箱: `support@yunyoo.cc`



## 许可证

本项目采用 Apache License 2.0 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

- 如果您想支持我的努力，请保留 `YUNYOO LTD` 的版权信息。
