/**
 * Dart varsayılan olarak hiç bir değişkene null değer atanmasına izin vermez. buna dart non-nullable tip denir. Bir değişken tanımlayıp uygun veriyi atamazsanız size uyarı verecektir. Bu uyarıda değişkene ilk değeri atamanız istenecektir. Böylece program çalışırken hiçbir non-nullable bir değişken null değeri göstermez.(null sound)
 * 
 * Bunu istemiyorsanız veri tipinin sonuna ? koyarsınız. Böylece değişkende null değer saklanabilir. Bunlar da aslında yeni bir veri tipidir. ? koyarak nullable type oluşturmuş olursunuz. 
 * 
 */

void main(List<String> args) {
  int? a;
  a = null;
  print("a değişkeninin değeri $a");
}