// test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';

// Importamos nuestra app principal
import 'package:t_posture_gym/core/app/app.dart'; 

void main() {
  testWidgets('Welcome screen smoke test', (WidgetTester tester) async {
    // Construye nuestra app (TPostureApp) y provoca un frame.
    await tester.pumpWidget(const TPostureApp());

    // Verifica que nuestra pantalla de bienvenida muestra su título
    expect(
      find.text('¡Queremos conocerte mejor para ayudarte a alcanzar tus objetivos!'),
      findsOneWidget
    );
  });
}

