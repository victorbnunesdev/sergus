import 'package:flutter/material.dart';
import 'package:sergusapp/constants.dart';

class MinhaContaView extends StatelessWidget {
  List<Servico> servicos = [
    Servico("serviço 1", "descricao"),
    Servico("serviço 2", "descricao"),
    Servico("serviço 3", "descricao"),
    Servico("serviço 4", "descricao"),
    Servico("serviço 5", "descricao"),
    Servico("serviço 6", "descricao")
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          toolbarHeight: appBarToolbarHeight,
        ),
        body: Container(
            child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  color: Colors.purple,
                  child: Row(children: [
                    Column(
                      children: [
                        Text("Patrimônio"),
                        Text("R\$ 12.950,10"),
                      ],
                    )
                  ])),
            ),
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.3),
                scrollDirection: Axis.horizontal,
                itemCount: servicos.length,
                onPageChanged: (int index) {},
                itemBuilder: (BuildContext context, int index) {
                  Servico servico = servicos[index];
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.5),
                scrollDirection: Axis.horizontal,
                itemCount: servicos.length,
                onPageChanged: (int index) {},
                itemBuilder: (BuildContext context, int index) {
                  Servico servico = servicos[index];
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 100,
                          color: Colors.pinkAccent,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  color: Colors.purple,
                  child: Row(children: [
                    Column(
                      children: [
                        Text("Central de Atendimento"),
                        Text("(79) 2106-4500"),
                      ],
                    )
                  ])),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  color: Colors.purple,
                  child: Row(children: [
                    Column(
                      children: [
                        Text("Endereço"),
                        Text(
                            "Av. Augusto Maynard, 321, 1º andar - São José 49015-380 - Aracaju-SE"),
                      ],
                    )
                  ])),
            ),
          ],
        )),
      ),
    );
  }
}

class Servico {
  String _nome;
  String _descricao;

  Servico(String nome, String descricao) {
    _nome = nome;
    _descricao = descricao;
  }
}
