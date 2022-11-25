class Pet {
  int? id;
  String? pet;
  String? name;
  String? breed;
  String? birthYear;
  String? birthMonth;
  String? birthDay;
  String? sex;
  String? neutering;
  String? weight;
  String? bcs;
  String? alg;
  String? algSub;
  String? health;
  bool? exist;
  int? age;

  Pet(
      {this.id,
      this.pet,
      this.name,
      this.breed,
      this.birthYear,
      this.birthMonth,
      this.birthDay,
      this.sex,
      this.neutering,
      this.weight,
      this.bcs,
      this.alg,
      this.algSub,
      this.health,
      this.exist,
      this.age});

  Pet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pet = json['pet'];
    name = json['name'];
    breed = json['breed'];
    birthYear = json['birth_year'];
    birthMonth = json['birth_month'];
    birthDay = json['birth_day'];
    sex = json['sex'];
    neutering = json['neutering'];
    weight = json['weight'];
    bcs = json['bcs'];
    alg = json['alg'];
    algSub = json['alg_sub'];
    health = json['health'];
    exist = json['exist'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pet'] = this.pet;
    data['name'] = this.name;
    data['breed'] = this.breed;
    data['birth_year'] = this.birthYear;
    data['birth_month'] = this.birthMonth;
    data['birth_day'] = this.birthDay;
    data['sex'] = this.sex;
    data['neutering'] = this.neutering;
    data['weight'] = this.weight;
    data['bcs'] = this.bcs;
    data['alg'] = this.alg;
    data['alg_sub'] = this.algSub;
    data['health'] = this.health;
    data['exist'] = this.exist;
    data['age'] = this.age;
    return data;
  }
}
