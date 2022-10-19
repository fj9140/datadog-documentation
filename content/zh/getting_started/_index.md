---
title: 从终端代理开始
kind: 文档
aliases:
  - /getting_started/agent
---

此指导文档提供终端代理的介绍以及它是如何发送系统级指标到 Datadog 平台的。通过一个终端代理在 Ubuntu 系统的安装示例，它包含以下内容：

  - 终端代理安装
  - 验证终端代理运行
  - 配置终端代理功能
  - 故障排除相关资源

## 总览

### 关于终端代理

Datadog 终端代理是一个运行在主机上的软件。它从主机收集事件和指标数据再发送到 Datadog，之后你就可以分析监控和性能数据。它可以运行在本地主机（Windows，MacOS），容器环境（Docker，Kubernetes），本地数据中心。你可以使用配置管理工具（Chef，Puppet，Ansible）安装和配置它。

终端代理可以在15至20秒之间手机75至100种系统级指标数据。通过额外配置，终端代理还可以发送实时数据、日志以及正在运行的程序跟踪信息到 Datadog 平台。Datadog 的终端代理程序是开源的，它的源代码可以在Github的 [DataDog/datadog-agent][1] 中访问。


### 终端代理性能开销

终端代理占用的磁盘空间取决于功能配置以及它要发送哪些数据。刚开始，它大概平均占用 0.08%的CPU以及830MB至880MB的磁盘空间。

参见 [终端代理性能开销][2] 获取更多性能测试信息。

### 数据收集

#### 终端代理指标

#### 检查清单

## 主机与容器的终端代理的区别

## 为什么要安装终端代理

## 步骤

### 前置要求

1. 创建 [Datadog 账号][15]。
2. 获取你的 [Datadog API key][16]。
3. 将Datadog用户界面打开

**注意**： 本次演示使用Ubuntu操作系统。参见 [终端代理基本用法][17] 页面来获取完整的平台支持列表。

### 安装

在Datadog用户界面，通过 **集成 > 终端代理** 菜单导航到终端代理安装页面，然后选择Ubuntu。

### 验证

#### 终端命令

#### 事件

#### 服务检查清单

#### 系统指标

## 终端代理配置文件

#### 通过终端代理配置文件设置标签

#### 其他配置选项

## 命令

## 故障排除

## 延伸阅读

## 后续步骤

[1]: https://github.com/DataDog/datadog-agent
[2]: /agent/basic_agent_usage/?tab=agentv6v7#agent-overhead
[15]: https://www.datadoghq.com
[16]: https://app.datadoghq.com/organization-settings/api-keys
[17]: /agent/basic_agent_usage/?tab=agentv6v7
