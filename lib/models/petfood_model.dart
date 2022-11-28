class Petfood {
  String? productCode;
  String? pet;
  String? name;
  String? type;
  String? shape;
  String? brand;
  List<String>? lifeStage;
  List<String>? size;
  List<String>? health;
  List<String>? feature;
  String? mainIngredient;
  String? allIngredient;
  List<String>? alg;
  int? kibble;
  String? weight;
  String? protein;
  String? proteinDm;
  String? fat;
  String? fatDm;
  String? fiber;
  String? fiberDm;
  String? ash;
  String? ashDm;
  String? calcium;
  String? calciumDm;
  String? phosphorus;
  String? kcal;
  int? retailPrice;
  String? wholePrice;
  String? onOff;
  String? link;
  int? salesCount;
  String? showProduct;

  Petfood(
      {this.productCode,
      this.pet,
      this.name,
      this.type,
      this.shape,
      this.brand,
      this.lifeStage,
      this.size,
      this.health,
      this.feature,
      this.mainIngredient,
      this.allIngredient,
      this.alg,
      this.kibble,
      this.weight,
      this.protein,
      this.proteinDm,
      this.fat,
      this.fatDm,
      this.fiber,
      this.fiberDm,
      this.ash,
      this.ashDm,
      this.calcium,
      this.calciumDm,
      this.phosphorus,
      this.kcal,
      this.retailPrice,
      this.wholePrice,
      this.onOff,
      this.link,
      this.salesCount,
      this.showProduct});

  Petfood.fromJson(Map<String, dynamic> json) {
    productCode = json['product_code'];
    pet = json['pet'];
    name = json['name'];
    type = json['type'];
    shape = json['shape'];
    brand = json['brand'];
    lifeStage = json['life_stage'].cast<String>();
    size = json['size'].cast<String>();
    health = json['health'].cast<String>();
    feature = json['feature'].cast<String>();
    mainIngredient = json['main_ingredient'];
    allIngredient = json['all_ingredient'];
    alg = json['alg'].cast<String>();
    kibble = json['kibble'];
    weight = json['weight'];
    protein = json['protein'];
    proteinDm = json['protein_dm'];
    fat = json['fat'];
    fatDm = json['fat_dm'];
    fiber = json['fiber'];
    fiberDm = json['fiber_dm'];
    ash = json['ash'];
    ashDm = json['ash_dm'];
    calcium = json['calcium'];
    calciumDm = json['calcium_dm'];
    phosphorus = json['phosphorus'];
    kcal = json['kcal'];
    retailPrice = json['retail_price'];
    wholePrice = json['whole_price'];
    onOff = json['on_off'];
    link = json['link'];
    salesCount = json['sales_count'];
    showProduct = json['show_product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_code'] = this.productCode;
    data['pet'] = this.pet;
    data['name'] = this.name;
    data['type'] = this.type;
    data['shape'] = this.shape;
    data['brand'] = this.brand;
    data['life_stage'] = this.lifeStage;
    data['size'] = this.size;
    data['health'] = this.health;
    data['feature'] = this.feature;
    data['main_ingredient'] = this.mainIngredient;
    data['all_ingredient'] = this.allIngredient;
    data['alg'] = this.alg;
    data['kibble'] = this.kibble;
    data['weight'] = this.weight;
    data['protein'] = this.protein;
    data['protein_dm'] = this.proteinDm;
    data['fat'] = this.fat;
    data['fat_dm'] = this.fatDm;
    data['fiber'] = this.fiber;
    data['fiber_dm'] = this.fiberDm;
    data['ash'] = this.ash;
    data['ash_dm'] = this.ashDm;
    data['calcium'] = this.calcium;
    data['calcium_dm'] = this.calciumDm;
    data['phosphorus'] = this.phosphorus;
    data['kcal'] = this.kcal;
    data['retail_price'] = this.retailPrice;
    data['whole_price'] = this.wholePrice;
    data['on_off'] = this.onOff;
    data['link'] = this.link;
    data['sales_count'] = this.salesCount;
    data['show_product'] = this.showProduct;
    return data;
  }
}
