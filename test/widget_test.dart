// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shack15/routeGenerator/routeGenerator.dart';

void main() {
  testWidgets('Testing widgets', (WidgetTester tester) async {
    //find all widgets needed
    final introWidget = find.byKey(const ValueKey('introWidget'));
    final subScreenDividerWidget =
        find.byKey(const ValueKey('subScreenDivider'));
    final cAvatarWidget = find.byKey(const ValueKey('cavatars'));
    final shack15MenuWidget = find.byKey(const ValueKey('menus'));
    final tokenNotesWidget = find.byKey(const ValueKey('tokenNotes'));
    final lastestNewsWidget = find.byKey(const ValueKey('latestNews'));
    final availableSeatsWidget = find.byKey(const ValueKey('availableSeats'));
    final bottomNavBarWidget = find.byKey(const ValueKey('bottomNavBar'));

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );

    //verify that all widgets are present
    expect(introWidget, findsOneWidget);
    expect(subScreenDividerWidget, findsWidgets);
    expect(cAvatarWidget, findsOneWidget);
    expect(shack15MenuWidget, findsOneWidget);
    expect(tokenNotesWidget, findsOneWidget);
    expect(lastestNewsWidget, findsWidgets);
    expect(availableSeatsWidget, findsOneWidget);
    expect(bottomNavBarWidget, findsOneWidget);
  });
}
