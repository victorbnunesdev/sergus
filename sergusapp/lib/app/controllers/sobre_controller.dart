import 'package:flutter/cupertino.dart';

class SobreController {
  final conteudo = ValueNotifier<ConteudoSobreState>(ConteudoSobreState.inicio);

  carregarConteudo(ConteudoSobreState novoConteudo) {
    conteudo.value = novoConteudo;
  }
}

enum ConteudoSobreState {
  inicio,
  politica_de_privacidade,
  sergus_educacao,
  ultimas_noticias
}
