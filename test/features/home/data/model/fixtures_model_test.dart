import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:football/core/api/rest_client.dart';
import 'package:football/core/exceptions/app_exceptions.dart';
import 'package:football/features/home/data/model/fixtures/fixtures_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fixtures_model_test.mocks.dart';

@GenerateMocks([RestClient])
void main() async {
  final file = File('test/assets/fixtures/fixtures_response.json');
  final json = jsonDecode(await file.readAsString());
  final tFixtureModel = FixturesModel.fromJson(json);
  final mockRestClient = MockRestClient();

  group('should return correct json response', () {
    test('should get a successful response from fixtures/', () async {
      when(mockRestClient.getFixtures(leagueId: 850, season: 2023))
          .thenAnswer((_) => Future.value(tFixtureModel));

      final res = await mockRestClient.getFixtures(leagueId: 850, season: 2023);

      expect(res, isA<FixturesModel>());
      expect(res.response.length, tFixtureModel.response.length);
    });

    test('should throw a no internet exception when call fixtures', () async {
      when(mockRestClient.getFixtures(season: 2023, leagueId: 850))
          .thenAnswer((_) => Future.error(NoInternetException()));
      final res = mockRestClient.getFixtures(season: 2023, leagueId: 850);

      expect(res, throwsException);
    });
  });
}
