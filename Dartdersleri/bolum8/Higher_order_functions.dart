/**
 * Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi aynı anda da yapılabilir.
 * 
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
 /* liste.forEach((element) {print("Element $element");}); // listedeki elemanları gezmek için forEach metodunu kullanıyorum. Bu metodun içerisinde bir Lambda ( isimsiz ) fonksiyonda var . Foreach metodu bu fonfsiyonu parametre olarak alıyor. Bu duruma da Higher order functions deniyor. */

//liste.forEach(callback); // foreach metodu parametre olarak callback metodunu alıyor. bu yüzden parantez eklemiyoruz çünkü o parametre, çalışacak olan şey foreach metodu.

//liste.forEach(callback);
kendiForEachyapim(liste, (int deger, int index) {
print("Değer $deger ve index $index");
});

}
 
void kendiForEachyapim (List<int> liste, Function callback) {
for (int i = 0; i < liste.length; i++) {
callback(liste[i], i);
}}

void callback(int element, int i) {
  print("Element: $element");


}