class AddUserModel {
  String nome;
  String sobrenome;
  String cargo;
  String descricaoCargo;
  String dataDeNascimento;
  int salario;

  AddUserModel(
      {this.nome,
        this.sobrenome,
        this.cargo,
        this.descricaoCargo,
        this.dataDeNascimento,
        this.salario});

  AddUserModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    sobrenome = json['sobrenome'];
    cargo = json['cargo'];
    descricaoCargo = json['descricao_cargo'];
    dataDeNascimento = json['data_de_nascimento'];
    salario = json['salario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['sobrenome'] = this.sobrenome;
    data['cargo'] = this.cargo;
    data['descricao_cargo'] = this.descricaoCargo;
    data['data_de_nascimento'] = this.dataDeNascimento;
    data['salario'] = this.salario;
    return data;
  }
}