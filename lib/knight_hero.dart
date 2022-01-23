// ignore_for_file: missing_return

import 'package:Inheritance/eat_ability_mixin.dart';
import 'package:Inheritance/flying_monster.dart';
import 'package:Inheritance/hero.dart';

class KnightHero extends Hero with EatingAbilityMixin implements FlyingMonster {
  @override
  String fly() {
    // ignore: todo
    // TODO: implement fly
    return 'Berlari lari';
  }
  // penulisan dibawah salah , karna tidak ada return
  // @override
  // String fly() {
  //   print('berlari lari terjun bebas');
  // }
}
