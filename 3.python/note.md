# 1. 基础

Python中的变量类型很简单，只有整型、浮点型、字符串型以及布尔型。

Python提供很多方便的数据结构，如list、tuple、dict、set。

## 1.1基本变量类型

* 整数
  * 可以十进制表示，也可以十六进制表示，如`0xf4`
  * 可以在较多位整数中使用下划线分隔，如`100_000_000`、`0x2fc3_a3e6`
* 浮点数
  * 数学表示，如`3.2`、`-0.78`
  * 科学计数法，如`3.4e6`表示$3.4\times10^6$
  * 关于精确度
    * 整数运算一定是精确地，包括除法运算，因为有取整和取余两种运算
    * 浮点数是有四舍五入的，因此是不精确的

* 字符串

  * 使用`""` 或`''` 括起来的文本

  * eg. `"hello"` 、`'abc123'`

  * 关于转义字符

    * python中，`r''`表示`''`中的字符不转义

    * python中，`\n`是表示换行的转义字符，在命令行窗口想要换行输入时，输入`'''strings'''`，此时敲回车即可实现换行而不是运行代码。

      ![image-20221217182743915](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212171827946.png)

* 布尔值

  * 只有`True`和`False`

  * 也可以用布尔运算出来

    ![image-20221217182942664](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212171829683.png)

  * 布尔运算可以进行与或非操作（`and`、`or`、`not`）

## 1.2 高级数据结构1—列表 list

list是使用`[]`括起来的有序数据列表

```python
classmates = ['Tom', 'Bob', 'Mary']
scores = [78, 99, 60] 
# list中也可以是不同类型的数据
L = ['Tom', 98, True]
```

* 关于列表的索引

![image-20221217191848647](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212171918667.png)

* 列表相关函数：

  * `len()` 获得列表长度

  * `pop()` 删除元素

    * `classmates.pop()` 删除末尾元素
    * `classmates.pop(index)` 删除索引为`index` 的元素

  * `append()` 添加元素到末尾

    ![image-20221217192901181](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212171929203.png)

  * `insert(index,a)` 将元素`a` 插入到索引`index` 的位置

    ![image-20221217193226518](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212171932536.png)

* list的元素也可以是list，类似二维数组

## 1.3 高级数据结构2—元组 tuple

​	tuple是用`()`括起来的有序数据列表，他与list的区别是tuple一旦初始化后是不可以改变的

​	关于tuple有些特性

* 空tuple的定义 `t = ()`

* 含有一个元素的tuple的定义

  * 此处要注意，如果使用`t = (1)`，则结果为`t = 1`，而不是一个tuple，此时是可以修改的

    ![image-20221217230331960](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172303985.png)

  * 若想定义一个只含有一个元素的tuple，应该用`t = (1,)`的格式

  ![image-20221217230733021](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172307040.png)

* 关于可变的tuple

  ```python
  t = (1, 2, [3, 4])
  t[2][1] = 2
  t[2]
  # 此时则改变了tuple中第三个元素——列表的内容
  ```

  ![image-20221217230837345](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172308362.png)

## 1.4 高级数据结构3—字典 dict

dict是由`{}`组成的一种数据结构，查找速度要快于list，其形式为`dict = {'Bob':91, 'Tom':94, 'Zhangsan':97}`

![image-20221217231257815](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172312832.png)

`{}`中，每一组元素由`:`链接，其前面为key，后面为value，即`key:value`

* 如果索引时，`dict[key]`中的key不存在，则会报错。

![image-20221217231714576](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172317592.png)

* 如果针对某一个key，可以直接修改其对应的value

![image-20221217231726080](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172317096.png)

* 判断key是否存在的两种方法

  * `Key in dict`判断，其返回值为布尔值`True` 或`False`

    ![image-20221217232635665](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172326687.png)

  * `get()`函数，若key不存在，则返回`None`或指定的数

  ![image-20221217232943320](https://picture-6736.oss-cn-qingdao.aliyuncs.com/202212172329343.png)

* 删除某个key，使用函数`pop()`

## 1.5 高级数据结构—set

set是一组key的集合，但是不存储value。在set中，没用重复的key。要创建set列表，需要使用`set()`函数，输入应该为一个list。

![image-20230125201846234](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-201855.png)

* set中的元素是无序的
* 重复元素会被自动滤除
* `add(key)`可以将key添加到set中，添加重复key不会报错，但是没有效果
* `remove(key)`可以删除指定key

* set可以看成数学意义上的无序和无重复元素的集合，因此，两个set可以做数学意义上的交集、并集等操作

![image-20230125202844394](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-202847.png)

![image-20230125203011958](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-203015.png)

# 2. 高级特性

## 2.1 切片 Slice

对于list和tuple数据，经常会取前几个元素，中间几个元素，后几个元素，或者隔两个元素取一次，使用循环太繁琐，使用Python提供的切片操作就很方便。

![image-20230125204713424](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-204716.png)

* 对元组进行切片时，后边仍是`[A:B:C]`
* 对字符串也可以进行切片操作，每一个字符都是一个元素

## 2.2 迭代

在Python中，for循环可以用迭代的方式来写，要比C语言的for循环简洁的多![image-20230125211015302](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-211019.png)

像list、tuple等数据结构都可以通过迭代来遍历，其中dict的遍历有点特殊，举个例子，对于如下dict

* 若想遍历key![image-20230125211404127](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-211406.png)

* 若想遍历value![image-20230125211621955](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-211627.png)

* 若要获得key与value![image-20230125211957776](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/25/20230125-212000.png)

## 2.3 列表生成式

若要生成列表`[1,2,3,4,5]`，可以使用`list(range(1,6))`

若要生成的列表里的元素是表达式，则可以用列表生成式来简洁高效的生成指定列表

* 一层循环的生成式是`[ f(x) for x in Iterable(x) ]`

* 二层循环的生成式是`[ f(x,y) for x in Iterable(x) for y in Iterable(y) ]`

`f(x)/f(x,y)`代表关于`x`/`x,y`的表达式，`Iterable(x)`表示关于`x`的可迭代对象

![image-20230126103103603](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/26/20230126-103106.png)

![image-20230126103215961](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/26/20230126-103217.png)

**关于`if`筛选**

* 可以在`for`后使用`if`筛选
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-20:18:10:538.png)

* 在`for`后面的`if`语句不可以接`else`，但是`for`前的表达式可以用`if/else`语句
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-20:20:54:882.png)

其实这里的 `x*x if x%2 == 0 else -x`是三目运算符`A if B else C`

## 2.4 生成器 generator

当使用列表生成器时，如果列表中的元素个数非常多，生成这个列表的内存成本是很高的，这时就可以使用生成器，用一个元素生成一个元素，不断循环产生新元素。

==list进行迭代之前，需要将所有的数据放到list容器中，而generator进行迭代时可以做到用一个元素生成一个元素==

**generator的生成方法**
* 第一种方法，将列表生成式的`[]`变成`()`
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-20:46:48:074.png)
* 第二种方法，生成器函数
	* 在函数定义中使用关键字`yield`作为返回值，而不是`return`
	* 每当程序执行完`yield`语句时，程序就会暂停执行，直到下一次迭代/`next()`调用
	* 调用生成器函数时，函数也不会执行，只会生成一个新的生成器函数对象
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-21:04:15:426.png)

**使用生成器的方法**
* 第一种方法，使用`next()`函数逐次调用生成器
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-21:06:19:818.png)
* 第二种方法，使用`for`循环遍历生成器
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-21:08:41:417.png)

==注意==
在生成器函数中也有`return`返回值，但是只有在溢出时才能返回

## 2.5 迭代器 Iterator

Python中可以用于`for`循环中迭代的对象有两类
* 集合数据类型，如list、tuple、dict、set、str等
* 生成器以及生成器函数
这些可以用于`for`循环的对象都被称为可迭代对象`Iterable`
使用`isistance()`判断一个对象是不是可迭代对象
![image.png](https://picture-6736.oss-cn-qingdao.aliyuncs.com/1/2023/01/28/2023:01:28-21:32:44:720.png)

第一类（集合数据类型）是可迭代对象`Iterable`，但不是迭代器`Iterator`。因为Python的`Iterator`对象表示的是一个数据流，Iterator对象可以被`next()`函数调用并不断返回下一个数据，直到没有数据时抛出`StopIteration`错误。
`Iterable`对象可以通过`iter()`方法变成迭代器`Iterator`
