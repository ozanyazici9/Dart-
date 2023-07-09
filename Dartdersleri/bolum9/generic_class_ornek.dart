import 'my_stack.dart';
void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("ozan");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());
  

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5); // sadece integer pushlayabiliyorum.

  GenericStack<String> genericStack = GenericStack(); // sınıfa hangi tip gönderilebilecek burda belirtiyorum. bütün elementler String olmalı.
  genericStack.push('hello');
  print(genericStack.pop());

  //genericStack.push(5);
}



