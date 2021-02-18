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
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Patrimônio",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "R\$ 12.950,10",
                          style: TextStyle(fontSize: 28, color: kPrimaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
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
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Comunicados",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.7),
                scrollDirection: Axis.horizontal,
                itemCount: servicos.length,
                onPageChanged: (int index) {},
                itemBuilder: (BuildContext context, int index) {
                  Servico servico = servicos[index];
                  return Container(
                    child: Column(
                      children: [
                        Container(
                            width: 240,
                            height: 120,
                            color: Colors.green[100],
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.network(
                                        "https://play-lh.googleusercontent.com/pUediKLjbs53FessiUvxMYbejQHpR60yECcBaxy9Wk_SCZWz8Bn2bRP91yYMOWUU2UY=s180-rw")),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 20, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nº 001/2021",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Ref.: Plano CD - Alteração da taxa de Contribuição",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Plano CD - Alteração da taxa de Contribuição",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                },
              ),
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
