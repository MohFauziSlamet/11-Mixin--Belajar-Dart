import 'dart:io';
import 'package:Inheritance/drink_ability_mixin.dart';
import 'package:Inheritance/flying_monster.dart';
import 'package:Inheritance/hero.dart';
import 'package:Inheritance/knight_hero.dart';
import 'package:Inheritance/monster.dart';
import 'package:Inheritance/monster_ubur_ubur.dart';
import 'package:Inheritance/monster_kecoa.dart';
import 'package:Inheritance/monster_ucoa.dart';

void main(List<String> arguments) async {
  var layla = Hero();
  var kecoa = MonsterKecoa();
  // ignore: omit_local_variable_types
  MonsterUburUbur uburUbur = MonsterUburUbur();
  var ucoa = MonsterUburUbur();
  var batman = KnightHero();

  //meminta inputan healtPoint untuk hero dan monster
  stdout.write('Masukan HealtPoint layla :');
  layla.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan HealtPoint kecoa :');
  kecoa.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan healtPoint uburUbur :');
  uburUbur.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan healtPoint monsterUcoa :');
  ucoa.healtPoint = int.tryParse(stdin.readLineSync());

  print('healtPoint lalya : ' + layla.healtPoint.toString());
  print('healtPoint kecoa : ' + kecoa.healtPoint.toString());
  print('healtPoint blueBuff : ' + uburUbur.healtPoint.toString());
  print('healPoint monster ucoa :' + ucoa.healtPoint.toString());

  print('------------------------------------------');
  print('hero layla membunuh monters :' + layla.killAMonster());
  print('Monster Kecoa Fly :' + kecoa.fly());
  print('Monster uburUbur Berenang:' + uburUbur.swim());
  print('Monster kecoa membunuh hero :' + kecoa.eatHuman);
  print('Monster uburUbur membunuh hero :' + uburUbur.eatHuman);

  print('------------------------------------------');

  //class juga dapat dijadikan sebuah list
  // ignore: omit_local_variable_types
  List<Monster> kumpulanMonsters = [];

  kumpulanMonsters.add(MonsterKecoa());
  kumpulanMonsters.add(MonsterKecoa());
  kumpulanMonsters.add(MonsterUburUbur());
  kumpulanMonsters.add(MonsterUcoa());

  for (var uburUbur in kumpulanMonsters) {
    if (uburUbur is MonsterUburUbur) {
      //is adalah penunjuk bahwa apakah uburUbur adl objek MonsterUburUbur
      print(uburUbur.swim());
    }
  }
  // ignore: unnecessary_cast
  print((uburUbur as MonsterUburUbur)
      .swim()); // as adl penujuk bahwa blue merupakan jenis monterUbuUbur

  print('---------------------------------------------');
  print('Perintah move untuk Kumpulan monster yang telah di override');
  for (var m in kumpulanMonsters) {
    print(m.move());
  }
  /* interface hampir sama dengan abstract class , namun yang membedakan nya ,
  interface merupakan template yang berisi methode yang berfungsi sbg implement saja
  bukan u dijadikan sebuah turunan dari class . bisa dibilang kumpulan suatu skill skiill .
  (kumplulan kumpulan methode yang harus di miliki oleh class yang mengimplemen
  dari interface)
   */
  print('---------------------------------------------');
  print('Menggunakan perintah implement (Interface)');
  // ignore: omit_local_variable_types
  for (Monster m in kumpulanMonsters) {
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
  print('---------------------------------------------');
  print('Menggunakan perintah with (mixin)');
  // ignore: omit_local_variable_types
  for (Monster m in kumpulanMonsters) {
    if (m is DrinkAbilityMixin) {
      print((m as DrinkAbilityMixin).drink());
    }
  }
  print('---------------------------------------------');
  print('Menggunakan perintah with (mixin)');
  print('Batman makan ' + batman.eat());
  print('Hero membunuh monster ' + Hero().killAMonster());
  print('KnightHero terbang ' + KnightHero().fly());
  print('Ubur Ubur berenang ' + MonsterUburUbur().swim());
  print('Uco Minum ' + MonsterUcoa().drink());
  print('\n');
}

/* karena methode with(mixin) hanya dipasang pada class monsterUcoa
  maka yang bisa minum hanya monster ucoa . Bila ingin semua monster dapat minum,
  kita bisa mengubah methode with kedalam class monster , lalu secara otomatis ,
  turunan dari class monster dapat menggunakan mixin
  penulisan with (mixin) harus setelah #extends ,
  jika penulisan setelah implement , maka akan error .
  penulisan with (mixin) , bisa berulang kali , sama dengan interface . tinggal menambahkan
  tanda baca koma (,) lalu tulis disebelahnya lagi tanpa menulis methode with lagi.
  */

/*
sebuah objek hanya bisa memiliki satu parent dari satu class (extends),
namun dapat memiliki interface dari banyak class (implement). pada
Dart , interface == abstract class . tidak dapat dijadikan sbg parent .
 */

/* => Inheritance , artinya dia membagikan behavior atau perilakunya pada kelas
turunannya , tetapi class hanya bisa extend pada satu class saja . (extend) .
=> Interface , artinya memaksakann behavior atau perilaku yang dimilikinya , kepada
class yang mengimplement nya . jadi class yang mengimplement wajib melakukan
@overide . baik ada kode programnya maupun tidak ada kode programnya (kode program
pada interface diubah boleh , tidak diubah juga boleh , yang penting ada @Overide),
sebuah class bisa mengimplement lebih dari satu interface (abstract class) dengan
cukup menambakan keyword koma(,).
=> mixin , artinya menambhakan behavior atau perilaku yang dimiliki oleh si mixin
class , kepada class yang memakai keyword "with" . mixin ini harus ditempatkan setelah
extend , dan juga bisa lebih dari satu , dengan menambahkan keyword koma(,)
 */
