# README

浙江大学 数字逻辑设计 课程项目

只保留了项目文件，需要重新编译才能使用。

P.S. 注意 ISE 运行项目需要文件路径中不出现中文和空格。

可以使用以下 powershell 命令快速删除没用的文件：

```powershell
Get-ChildItem -Recurse | Where-Object { $_.Extension -notin ('.v', '.xise', '.sch', '.ucf', '.md', '.gitignore') } | Remove-Item -Force
```

***

一些模块和引脚的说明：[ZJU-Digital-logic-design-Projects/MyModules](https://github.com/cjlworld/ZJU-Digital-logic-design-Projects/tree/main/MyModules) 

***

参考资料：

- [yile-liu/ZJU_digital_logic_design: ZJU_digital_logic_design 数字逻辑设计 (github.com)](https://github.com/yile-liu/ZJU_digital_logic_design)

 
