class Singleton {
  static Singleton? _instance;
  int? number;

  Singleton._(){
    print('started');
  }

  static Singleton get instance => _instance ??= Singleton._();

  void someMethod() {

    print('Good Morning Humayun');
  }
}

class SingletonLazy {
  static SingletonLazy? _instance;

  SingletonLazy._internal(){
    print('started A');
  }

  factory SingletonLazy() => _instance ??= SingletonLazy._internal();

  void someMethod() {
    print("someMethod Called");
  }
}

class SingletonEager {
  static final SingletonEager _instance = SingletonEager._();

  SingletonEager._(){
    print('started Eager');
  }

  static SingletonEager get instance => _instance;

  void someMethod() {
    print("someMethod Called");
  }
}