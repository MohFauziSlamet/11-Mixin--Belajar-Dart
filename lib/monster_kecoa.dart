import 'package:Inheritance/flying_monster.dart';
import 'package:Inheritance/monster.dart';

class MonsterKecoa extends Monster implements FlyingMonster {
  @override
  String fly() => 'Syuuung...Syuuung...Syuuung';

  /* methode override ini , mengartikan : class monsterKecoa wajib mengisi
  methode yang disediakan oleh class monster selaku parent dari class monsterKecoa.
  methode itu berisi String move();
   */
  @override
  String move() {
    // ignore: todo
    // TODO: implement move
    return 'Jalan jalan santai ...';
  }
}
