import 'package:Inheritance/character.dart';


/* keyword abstract menjadikan class monter tidak dapat memiliki objek ,
class monster hanya sebuah template .  class ini tidak diwajibkan memiliki methode apapun
 */
abstract class Monster extends character {
  String eatHuman = 'Grr... Delicius ... Yummy...';
  String move();
}
