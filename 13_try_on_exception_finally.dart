void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print("éxito: $value");
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOPs!! algo terrible pasó: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception("NO hay parámetros en el URL");
}
