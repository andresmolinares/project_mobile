import 'package:project_mobile/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({
    this.registros,
  });

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json.map((i) => Registros.fromJson(i)).toList();
  }
}
