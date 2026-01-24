import 'generic_stack.dart';

void main(List<String> args) {
  // List<String> liste=[];
  // liste.add("hasan");
  // liste.add("ali");


  // GenericStack stack  = GenericStack();
  // stack.push(10);
  // stack.push("emre");
  // stack.push("hasan");
  // stack.push("ayse");

  // print(stack.pop());
  // print(stack.pop());
  // print(stack.pop());
//todo Bu kısma GenericStack<String> string yazdıgın için butun genreic içeirği string olur int yazarsan int olur
GenericStack<String> generic=GenericStack();
generic.push("ayşe");
generic.push("hasan");
generic.push("ümit");

print(generic.pop());

 IntegerGenericStack integerGenericStack = IntegerGenericStack();
 integerGenericStack.push(15);
 integerGenericStack.push(85);
 integerGenericStack.push(16);

 print(integerGenericStack.pop());
}