class UserModel {
  int id;
  String nome;
  String sobrenome;
  String cargo;
  String descricaoCargo;
  String dataDeNascimento;
  int salario;
  String createdAt;
  String updatedAt;

  UserModel(
      {this.id,
      this.nome,
      this.sobrenome,
      this.cargo,
      this.descricaoCargo,
      this.dataDeNascimento,
      this.salario,
      this.createdAt,
      this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    sobrenome = json['sobrenome'];
    cargo = json['cargo'];
    descricaoCargo = json['descricao_cargo'];
    dataDeNascimento = json['data_de_nascimento'];
    salario = json['salario'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['sobrenome'] = this.sobrenome;
    data['cargo'] = this.cargo;
    data['descricao_cargo'] = this.descricaoCargo;
    data['data_de_nascimento'] = this.dataDeNascimento;
    data['salario'] = this.salario;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
