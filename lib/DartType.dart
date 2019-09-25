import 'package:flutter/cupertino.dart';

class DartType extends StatefulWidget {
  @override
  _DartTypeState createState() => _DartTypeState();
}

class _DartTypeState extends State<DartType> {
  @override
  Widget build(BuildContext context) {
    //_numType();
    //_StringType();
    // _boolType();
    // _listType();
    // _mapType();
    return Container();
  }

  /// 数字类型常用操作练习
  _numType() {
    num n1 = 1.0;
    num n2 = -1;
    int i1 = 2;
    double d1 = 2.0;

    bool b = n1 == n2; //对比数字 false
    double d2 = 1;
    bool b2 = n1 == d2; //  true

    bool b3 = i1 == d1; // true
    print("n1 $n1 n2 $n2 i1 $i1 d1 $d1 b $b  b2 $b2 b3 $b3");
    // n1 1.0 n2 -1 i1 2 d1 2.0 b false  b2 true b3 true

    // 对比大小
    num nu1 = 6;
    num nu2 = 3;
    double do1 = 6;
    int in1 = 6;
    print(nu1.compareTo(nu2)); // 1
    print(do1.compareTo(nu1)); // 0
    print(do1.compareTo(in1)); // 0

    print(double.infinity.compareTo(double.nan));

    // 四则运算
    print(8.5 / 5); // 1.7
  }

  _StringType() {
    String s1 = '我爱你中国';
    String s2 = "我爱你中国";

    bool b1 = s1.startsWith("我"); // true
    bool b2 = s1.startsWith("中"); // false
    print("b1 $b1 b2 $b2");

    print(s1.compareTo(s2)); // 0 尼玛这和对比数字规则差不多 也能比较大小
    print(s1 == s2); // true
    print(Comparable.compare(s1, s2));
  }

  _boolType() {
    // 检查是否为空字符串
    var emptyStr = '';
    print(emptyStr.isEmpty); // true

    // 检查是否小于等于0
    var numberStr = 0;
    print(numberStr <= 0); // true

    // 检查是否为null
    var nullStr;
    print(nullStr == null); // true

    // 检查是否为NaN
    var value = 0 / 0;
    print(value.isNaN); // true
  }

  _listType() {
    List<String> list = new List(); // 指定泛型
    List list2 = []; // 未指定泛型
    // 添加
    list2.add("我");
    list2.add(1);
    list2.add("爱");
    list2.add(true);
    print(list2); // [我, 1, 爱, true]

    list.add("中国");
    // list.add(1);//报错
    // 循环遍历
    for (int i = 0; i < list2.length; i++) {
      print(list2[i]);
    }
    // 移除
    list2.removeAt(2);
    print(list2); // [我, 1, true]

    // list 生成器
    List l3 = List.generate(10, (index) => index * 2);
    print(l3);
    // forEach 遍历
    l3.forEach((item) {
      print(item);
    });
  }

  _mapType() {
    //声明map
    Map map = {"1": "我", 2: "爱", true: "中国"};
    print(map); // {1: 我, 2: 爱, true: 中国}
    // 先声明，再去赋值。
    Map map2 = new Map();
    map2["1"] = "啊";
    map2["2"] = "波";
    map2["3"] = "此";
    map2["4"] = "的";
    print(map2); // {1: 啊, 2: 波, 3: 此, 4: 的}
    // 要创建一个编译时常量const的map，请在map文字之前添加const：
    final fruitConstantMap = const {2: 'apple', 10: 'orange', 18: 'banana'};

    // 添加元素。格式: 变量名[key] = value,其中key可以是不同类型。
    map2["5"] = "的";
    map2["5"] = "额"; // 一个key只能对应一个值
    print(map2); // {1: 啊, 2: 波, 3: 此, 4: 的, 5: 额}
    // 查找
    bool b1 = map2.containsKey("5");
    bool b2 = map2.containsValue("的");
    print("b1 $b1 b2 $b2"); // b1 true b2 true
    // 移除
    map2.remove("2");
    print(map2); // {1: 啊, 3: 此, 4: 的, 5: 额}

    map2.forEach((k, v) {
      print(k);
      print(v);
    });
  }
}
