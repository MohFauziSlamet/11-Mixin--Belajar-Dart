var price = 10000;

const num pi = 3.14;

/*Variabel discount dideklarasikan pada fungsi checkDiscount() sehingga memiliki
scope pada fungsi tersebut dan menyebabkan eror pada fungsi main(). Maka
untuk mengatasinya kita tetap perlu membuat variabel di kedua fungsi.
 */
num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }
  return discount;
}
/*Selain berada dalam lingkup fungsi, suatu variabel juga bisa menjadi variabel
global, yaitu variabel yang dideklarasikan di luar blok kode apa pun. Variabel ini
bisa diakses di mana pun selama masih berada di berkas yang sama.
 */
num calculateCircleArea(num radius) => pi * radius * radius ;
void main() {
  var discount = checkDiscount(price);
  print('You need to pay : ${price - discount} ');

  print('===================================');
  var radius = 7;
  print('Luas lingkaran dengan radius $radius'
      '= ${calculateCircleArea(radius)}');
}
