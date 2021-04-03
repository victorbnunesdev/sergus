class UserAccount {
  final String nome;
  final String email;
  final String cpf;
  final String plano;
  final String celular;

  UserAccount({this.nome, this.email, this.cpf, this.plano, this.celular});

  factory UserAccount.fromJson(Map<String, dynamic> json) {
    return UserAccount(
        nome: json['Nome'],
        email: json['Email'],
        cpf: json['Cpf'],
        plano: json['Plano'],
        celular: json['Celular']);
  }
}
