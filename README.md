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
- 开源框架收集
  - pop

## 绘图

- Computer Graphics

## UI实用功能

- 启动图
- 拖动一个UI元素
- 展开和收起块状UI，并且伴随动画

## 项目开发

- 编写界面方式的选择
  - 优先选择手写代码编写界面
    - 快速创建UI的Category维护
    - UI相关代码资源的维护
    - Code Snippets的维护
    - 工欲善其事必先利其器
  - 界面布局和简单业务选择Xib
  - 高效率的开发考虑选择Storyboard
- 手写代码编写界面
- Xib编写界面
- Storyboard编写界面
- JavaScript编写原生界面
- HTML应用

## 开发经验

- 宏定义和定义常量参数的选择，如果名称是很有可能出现重名的参数，优先选择宏定义，不然使用定义常量的方式是很容易报错的，报错的原因是变量名重复；有时候的常量定义不一定能提高效率，反而会增大代码量和程序运行时的内存占用，此时往往宏定义变得更为合适；
- Xcode可视化编写UI经验总结
  - 对可视化UI的数据要在文档中进行记录，因为在Interface Builder中修改了数据之后，就不能再得到原来的数据；
  - 编译可视化UI需要的时间更久；
- 复杂视图使用手写代码编写界面比较好；

## Reference



## 研究项

- Frame和Constraints的优先级；
- UIView layoutSubviews的机制研究；

## Follow Me

Github：https://github.com/BobWongs