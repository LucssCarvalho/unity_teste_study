import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/person.dart';

void main() {
  final person = Person(name: 'Lucas', age: 22, height: 1.77, weight: 64.4);
  print(person.imc);

  test('imc is 20.56', () {
    expect(person.imc, 20.56);
  });

  test('if the age is over 18, isOlder is true', () {
    expect(person.isOverEighteen, true);
  });

  test('if the age is 18, isOlder is true', () {
    final person = Person(name: 'Lucas', age: 18, height: 1.77, weight: 64.4);
    expect(person.isOverEighteen, true);
  });
}
