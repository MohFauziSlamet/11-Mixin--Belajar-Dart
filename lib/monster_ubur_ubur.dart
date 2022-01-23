import 'package:Inheritance/monster.dart';

class MonsterUburUbur extends Monster {
  String swim() => 'Woooshh...Woooshh...Woooshh';

  @override
  /* juga bisa menimpa ataupun mengganti methode dari parent ,
  dengan yang di inginkan pada class tsb */
  // ignore: todo
  // TODO: implement eatHuman
  String get eatHuman => 'Sedoot sedoot asyiik';

  /* methode override ini , mengartikan : class monsterUburUbur wajib mengisi
  methode yang disediakan oleh class monster selaku parent dari class monsterUburUbur
  methode itu berisi String move();
   */
  @override
  String move() {
    // ignore: todo
    // TODO: implement move
    return 'Berenang .. renang';
  }
}
