import 'package:flutter_test/flutter_test.dart';
import 'package:football/features/home/data/model/fixtures/fixture_details_model.dart';
import 'package:intl/intl.dart';

void main() {
  group('should return the date and time in the specified format', () {

    final _fixtureDetailsModel = FixtureDetailsModel(date: DateTime.now());
    final _expectedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
    final _expectedTime = DateFormat('HH:mm').format(DateTime.now());

    test('should return the date in format dd-mm-yyyy', () async {
      //arrange
      final _resultDate = _fixtureDetailsModel.readableDate;

      //act

      //assert
      expect(_resultDate, _expectedDate);
    });

    test('should return the time in format HH:MM', () async {
      //arrange
      final _resultTime = _fixtureDetailsModel.readableTime;

      //act

      //assert
      expect(_resultTime, _expectedTime);
    });
  });
}
