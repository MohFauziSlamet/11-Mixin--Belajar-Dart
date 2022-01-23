import 'package:Inheritance/hero.dart';

/* Methode on , memiliki arti bahwa mixin ini hanya dapat digunakan oleh class hero
dan turunan nya , apabila dimasukan pada class selain Hero , maka akan terjadi error
 */
mixin EatingAbilityMixin on Hero {
  String eat() => 'hhmm nyaamm nyaammm mantab';
}
