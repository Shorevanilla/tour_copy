
/*Dart 语言支持 垃圾回收 (GC)，即所有未被引用的 Dart 对象最终都会被垃圾回收并销毁。
某些涉及到原生资源和目标对象无法修改的场景， GC 的行为可能不会符合预期。

WeakReference 会保存目标对象的引用，并且不会影响目标对象被 GC。
另一种方案是使用 Expando 对对象添加一些属性。

终结器 (Finalizer) 可以在对象已不再被引用时执行一个回调函数。
然而，终结器的回调并不保证一定会执行。

NativeFinalizer 为使用 dart:ffi 与原生交互的代码提供了更加强力的回调保证。
它的回调会在对象不再引用后至少调用一次。同时，它也可以用来关闭原生资源，例如数据库链接和打开的文件。

想要确保一个对象不会过早地被回收，其对应的类可以实现 Finalizable 接口。
当一个方法内的变量是 Finalizable，直到代码执行完毕后它才会被回收。*/ 