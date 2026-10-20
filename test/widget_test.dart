import 'package:flutter_test/flutter_test.dart';
import 'package:repoflutter/main.dart';

void main() {
  testWidgets('affiche l\'écran d\'accueil', (tester) async {
    await tester.pumpWidget(const LocalSwapApp());
    expect(find.text('LocalSwap'), findsOneWidget);
    expect(find.text('Bienvenue sur LocalSwap'), findsOneWidget);
  });
}