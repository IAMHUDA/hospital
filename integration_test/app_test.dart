import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Login Test', () {
    testWidgets('Verify Correct Username and Password to Login Screen',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(0), 'Defarrel');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(1), 'Banjar');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(2), '13 Juni 2004');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(3), 'Laki-laki');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(4), '0821302039');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(5), 'dfrl@gmail.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(6), 'Islam');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(7), 'Mahasiswa');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(8), 'Jalan sudirman');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(9), 'AMC');
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text("Submit Data"));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 2));
      expect(find.byType(app.MyApp), findsOneWidget);
    });
  });
}