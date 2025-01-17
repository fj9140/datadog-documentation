---
title: 仪表板
kind: documentation
---

## 概述
仪表板是 Datadog 用来可视化跟踪、分析和显示关键性能指标的工具，使您能够监控基础架构的运行情况。

**Note**: 您可以在 [Datadog App][1] 上浏览仪表板，应用可以在 [苹果商店][2] 和 [谷歌商店][3] 上下载。

## 新建仪表板

要创建新仪表板，点击[仪表板列表][1]页面上的 **+新建仪表板** 或在导航目录中的 **新建仪表板**，然后输入仪表板名称和选择布局选项。

{{< img src="dashboards/create-dashboard.png" alt="新增仪表板" style="width:70%" >}}

### 普通仪表板
仪表板基于网格布局，它可以包含很多对象，例如图片、图表、日志等。它们通常用作状态版或背板视图，它可以实时更新数据并显示一定量的历史数据。它们也可以用于调试。

### 时间板
时间板具有自动布局，重现单点在实时或固定时序中的位置。它们通常被用来故障排除、关联和一般数据浏览。

### 屏幕板
屏幕板是一种具有自由布局功能的仪表板，它可以包含很多对象，如图片、图表、日志等。它们通常用作状态板或背板视图，它可以实时更新数据或显示一定量的历史数据。

### 配置仪表板

### 图表菜单

单击任何仪表板图表都可以一个选项菜单：

| 选项描述 | 描述 |
|----------|-----|
| 发送截图 | 创建并发送您的图表截图 |
| 查找相关指标 | 利用 APM 服务 查找相关指标 |
| 全屏浏览 | 使用全屏浏览图表 [全屏模式][4]。 |
| 锁定光标 | 将光标锁定在页面的适当位置 |
| 查看相关进程 | 跳转到包含相关图表的 [实时进程][5] 页面 |
| 查看相关主机 | 跳转到包含相关图表的 [主机地图][6] 页面 |
| 查看相关日志 | 跳转到包含相关图表的 [日志浏览][7] 页面 |
| 查看相关追踪 | 弹出一个包含相关图表的 [追踪][8] 面板 |
### 全局时间选择器
要使用全局时间选择器，需要至少一个基于时间的部件设置 `全局时间`。可以在部件编辑器中的 **设置显示喜好** 进行设置，也可以直接添加一个新部件（因为全局时间是默认设置）。

全局时间选择器设置使得当前仪表板所有使用 `全局时间` 选项的部件使用统一时间范围。可以选择一个固定的历史时间窗口（`过去1小时`，`过去1天` 等），或使用 `从日历种选择` 选项 [输入自定义时间段][10]。如果移动时间窗被选中，部件 将会随着时间窗的移动而更新数据。

即使部件没有使用全局时间设置，而是使用本地时间范围显示数据，它也会受到全局时间窗口的影响。例如：如果全局时间被设定为2019.01.01至2019.01.02，部件设置本地时间范围为 `过去1分钟`，则会显示2019.01.02 11:59 之前一分钟的数据。

### 大屏模式

仪表板很适合在大屏或电视种展示关键指标性能数据。要启用大屏模式，使用键盘按键 `F` 或点击仪表板的电视图标。

### 设置

#### 生成分享链接
想要分享某个仪表板给其他人浏览，可以生成一个公开链接发送过去。细节请见 [分享仪表板][11]。

#### 显示UTC时间

开关显示UTC时间和您的默认时区时间。

#### 通知消息

如果仪表板的通知消息被激活，则 [事件浏览器][12] 中的事件会被创建出来。事件包含以下信息：文字改变、部件改变、仪表板克隆、仪表板删除以及执行操作的用户名称。

此外，激活通知服务的个人用户会收到电子邮件告警。任何用户，无论管理权限如何，都可以注册接收仪表盘的更改通知。

开通仪表盘的更改事件通知后，可以在事件浏览器中搜索：

```text
tags:audit,dash
```

如果要限制搜索结果到特定的仪表盘，可以在搜索中包含仪表盘名称。

#### 权限

在仪表盘的顶部，点击设定并选择 *权限*。

{{< img src="dashboards/dashboard-menu-permissions.png" alt="仪表盘目录设置" style="width:50%">}}

使用此弹窗设置限制对您、您组织中的当前角色，或组织中指定的角色的访问权限。

{{< img src="dashboards/dashboard-role-restrictions.png" alt="ROle restrictions in settings" style="width:70%" >}}

仪表板创建者永远拥有编辑权限，其他拥有此仪表板编辑权限的用户，可以添加或删除 访问控制列表(ACL)，只要该用户所属角色还在ACL上。更多有关角色信息，请见 [RBAC documentation][13]。

如果仪表板使用被弃用的 "只读" 属性创建，则访问控制列表会预先填充具有访问管理(`user_access_manage`)权限的角色列表。

如果你使用 Terraform 管理你的仪表板，可以使用最新版本的 Datadog Terraform 供应件来控制仪表板的编辑权限。更多信息请见 [Terraform Dashboard role restriction guide][14]。

#### 高密度模式

高密模式下，仪表板中并排显示每组部件，以增加部件密度。默认情况下，此模式在大屏幕且使用分组部件的仪表板中被激活。

{{< img src="dashboards/high-density-mode.png" alt="高密模式显示" style="width:90%" >}}

#### 克隆仪表板

使用此选项可以拷贝整个仪表板到一个新的仪表板。你可以为新克隆的仪表板设置名称。


## 延申阅读

[1]: /mobile/
[2]: https://apps.apple.com/app/datadog/id1391380138
[3]: https://play.google.com/store/apps/details?id=com.datadog.app
[4]: /dashboards/widgets/#full-screen
[5]: https://app.datadoghq.com/process
[6]: https://app.datadoghq.com/infrastructure/map
[7]: https://app.dataoghq.com/logs
[8]: /tracing/
[9]: /profiler/
[10]: /dashboards/guide/custom_time_frames/
[11]: /dasboards/sharing/#dashboards
[12]: /events/
[13]: account_management/rbac/
