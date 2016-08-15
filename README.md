## BWUserInterface

iOS User Interface Project includes the way to set up interface, layout ways, UI Components, Graphic Drawing, Animations, UI Utility Function

## Contents

- 界面编写方式
- 界面布局方式
- 界面原理和机制
- UIKit的UI元素
- Animation
- 绘图
- UI实用功能
- 开发经验
- Reference
- 研究项
- Follow Me

## 界面编写方式

- 手写代码
  - 分析
    - 优点
      - 灵活，可控性高
    - 缺点
      - 没有可视化界面搭建的直观
      - 增大界面编写的代码量
- Xib
  - 约束的设计
  - 约束的更新
  - Xib ViewController
    - 适用
      - 页面业务比较简单的界面；
  - Xib View
- Storyboard
- JavaScript编写原生界面
- HTML应用

## 界面布局方式

- Frame
- Auto Layout - Constraints
  - 整理项
    - 通过约束生成的View，Frame也是有值的，其实只要理解约束的机制这个也是很好理解的喽；

## 界面原理和机制

- iOS App从启动到显示过程的界面机制
- iOS UIKit中的界面机制

## UIKit的UI元素

- 类结构
- UIResponder
- UIViewController
- UIView
- UIControl
- CALayer

## Animation

- UIView中的动画方法

## 绘图

- Computer Graphics

## UI实用功能

- 启动图
- 拖动一个UI元素

## 开发经验

- 宏定义和定义常量参数的选择，如果名称是很有可能出现重名的参数，优先选择宏定义，不然使用定义常量的方式是很容易报错的，报错的原因是变量名重复；
- Xcode可视化编写UI经验总结
  - 对可视化UI的数据要在文档中进行记录，因为在Interface Builder中修改了数据之后，就不能再得到原来的数据；
  - 编译可视化UI需要的时间更久；
- 复杂视图使用手写代码编写界面比较好；

## Reference



## 研究项

- Frame和Constraints的优先级；

## Follow Me

Github：https://github.com/BobWongs