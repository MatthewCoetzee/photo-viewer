import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photoviewer/injection/injection_container.dart';

import 'package:photoviewer/main.dart';
import 'package:photoviewer/models/photo_model.dart';
import 'package:photoviewer/photo-viewer-bloc/photo_viewer_bloc.dart';
import 'package:photoviewer/repository/photo_viewer_repository.dart';

void main() {
  setUp(() {
    //Initiates dependency injection
    initDI();
  });
  group('Text Widget tests', () {
    testWidgets('Find home screen text', (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      expect(find.text('Home'), findsOneWidget);
    });
  });
}
