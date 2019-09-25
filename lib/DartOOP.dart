// 定义一个类
class Person {
  // 类属性
  int age;
  String name;

  // 私有属性
  String _id;

  // 构造函数方法一
  Person(this.age, this.name, this._id);

  // get /set 方法
  String get id => _id;

  set id(String value) {
    _id = value;
  }

  @override
  String toString() {
    return "_id $_id age: $age name $name";
  }
}

class Student extends Person {
  int sex;
  String nick;
  String className;
  String grade;
  String name;

  //构造函数方法一
  /// className 可选参数
  /// grade 默认参数
  Student(this.name, this.sex, this.nick, {this.className, this.grade = "三年级"})
      //初始化列表：除了调用父类构造器，在子类构造器方法体之前，
      // 你也可以初始化实例变量，不同的初始化变量之间用逗号分隔开
      : //this.nick = "$name ",
        //如果父类没有默认构造方法（无参构造方法），
        // 则需要在初始化列表中调用父类构造方法进行初始化
        super(0, name, '10011') {
    //构造方法体不是必须的
    print('构造方法体不是必须的');
  }

  //构造函数方法二
  //命名构造方法：[类名+.+方法名]
  //使用命名构造方法为类实现多个构造方法
  Student.cover(Student stu) : super(stu.age, stu.name, stu.id) {
    print('命名构造方法');
  }

  //构造函数方法三
  //命名工厂构造方法：factory [类名+.+方法名]
  //它可以有返回值，而且不需要将类的final变量作为参数，是提供一种灵活获取类对象的方式。
  factory Student.stu(Student stu) {
    return Student(stu.name, stu.sex, stu.nick);
  }

  //静态方法
  static doPrint(String str) {
    print('doPrint:$str');
  }

  @override
  String toString() {
    return 'Student{sex: $sex, nick: $nick, className: $className, grade: $grade, name: $name}';
  }
}

class Animal {}

abstract class Run {
  void toRun();
}

class Eat {
  void toEat() {
    print("toEat");
  }
}

class Dog extends Animal with Run, Eat {
  @override
  void toRun() {
    // TODO: implement toRun
    print("toRun");
    toEat();
  }
}

///工厂构造方法演示
class Logger {
  static Logger _cache;

//  工厂构造方法：
//  不仅仅是构造方法，更是一种模式
//  有时候为了返回一个之前已经创建的缓存对象，原始的构造方法已经不能满足要求
//  那么可以使用工厂模式来定义构造方法
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache;
  }

  Logger._internal();

  void log(String msg) {
    print(msg);
  }
}
