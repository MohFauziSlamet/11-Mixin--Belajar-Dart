import 'package:Inheritance/drink_ability_mixin.dart';
import 'package:Inheritance/flying_monster.dart';
import 'package:Inheritance/monster_ubur_ubur.dart';

class MonsterUcoa extends MonsterUburUbur
    with
        DrinkAbilityMixin // penulisan with (mixin) harus setelah #extends ,
    implements
        FlyingMonster {
  /* jika penulisan setelah implement , maka akan error .
    penulisan with (mixin) , bisa berulang kali , sama dengan interface . tinggal menambahkan
    tanda baca koma (,) lalu tulis disebelahnya lagi tanpa menulis methode with lainnya.
    */
  @override
  String fly() {
    // ignore: todo
    // TODO: implement fly
    return 'Terbang terbang berenang renang';
  }
}
