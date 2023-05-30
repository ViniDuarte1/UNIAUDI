class Option {
  int id;
  String nome;

  Option (this.id, this.nome);

  Map<String,dynamic> toMap(){
    var map = <String,dynamic>{
      'nome': nome,
    };
    return map;
  }


  
}

