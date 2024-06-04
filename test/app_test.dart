import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'Defarrel',
          birthplace: 'Jogja',
          birthdate: 'Juni 2004',
          gender: 'Man',
          phonenumber: '085624432434',
          email: 'dfrl@gmail.com',
          religion: 'Islam',
          job: 'Mahasiswa',
          address: 'Jalan sudirman',
          polyclinic: 'AMC',
        ),
      ),
    );

    expect(find.text('Name: Defarrel'), findsOneWidget);
    expect(find.text('Birth Place: Jogja'), findsOneWidget);
    expect(find.text('Birht Date: Juni 2004'), findsOneWidget);
    expect(find.text('Gender: Man'), findsOneWidget);
    expect(find.text('Phone Number: 085624432434'), findsOneWidget);
    expect(find.text('Email: dfrl@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Jalan sudirman'), findsOneWidget);
    expect(find.text('Polyclinic: AMC'), findsOneWidget);
  });
}