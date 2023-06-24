class ProductDataDetail {
  ProductDataDetail({
   required this.id,
   required this.licenseNumber,
   required this.prodStatus,
   required this.name,
   required this.company,
   required this.comparePrice,
   required this.mRPDiscount,
   required this.unitPrice,
   required this.unitTax,
   required this.netRate,
   required this.maxDiscount,
   required this.tags,
   required this.categorie,
   required this.subCategory,
   required this.productType,
   required this.hSNCode,
   required this.packageSize,
   required this.genericStrength,
   required this.genericSchedule,
   required this.description,
   required this.prescription,
   required this.productPic,
   required this.usage,
   required this.alternateMedicine,
   required this.sideEffects,
   required this.howToUse,
   required this.chemicalClass,
   required this.habitForming,
   required this.therapeuticClass,
   required this.actionClass,
   required this.dataTypePros,
   required this.file,});

  ProductDataDetail.fromJson(dynamic json) {
    id = json['_id'];
    licenseNumber = json['LicenseNumber'];
    prodStatus = json['ProdStatus'];
    name = json['Name'];
    company = json['Company'];
    comparePrice = json['ComparePrice'];
    mRPDiscount = json['MRPDiscount'];
    unitPrice = json['UnitPrice'];
    unitTax = json['UnitTax'];
    netRate = json['NetRate'];
    maxDiscount = json['MaxDiscount'];
    tags = json['Tags'];
    categorie = json['Categorie'];
    subCategory = json['SubCategory'];
    productType = json['ProductType'];
    hSNCode = json['HSNCode'];
    packageSize = json['Package_size'];
    genericStrength = json['Generic_strength'];
    genericSchedule = json['Generic_schedule'];
    description = json['Description'];
    prescription = json['Prescription'];
    productPic = json['ProductPic'];
    usage = json['Usage'];
    alternateMedicine = json['Alternate_medicine'];
    sideEffects = json['Side_effects'];
    howToUse = json['How_to_use'];
    chemicalClass = json['Chemical_Class'];
    habitForming = json['Habit_Forming'];
    therapeuticClass = json['Therapeutic_Class'];
    actionClass = json['Action_Class'];
    dataTypePros = json['DataTypePros'];
    file = json['File'];
  }
  late String id;
  late String licenseNumber;
  late String prodStatus;
  late String name;
  late String company;
  late String comparePrice;
  late String mRPDiscount;
  late String unitPrice;
  late String unitTax;
  late String netRate;
  late String maxDiscount;
  late String tags;
  late String categorie;
  late String subCategory;
  late String productType;
  late String hSNCode;
  late String packageSize;
  late String genericStrength;
  late String genericSchedule;
  late String description;
  late String prescription;
  late String productPic;
  late String usage;
  late String alternateMedicine;
  late String sideEffects;
  late String howToUse;
  late String chemicalClass;
  late String habitForming;
  late String therapeuticClass;
  late String actionClass;
  late String dataTypePros;
  late String file;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['LicenseNumber'] = licenseNumber;
    map['ProdStatus'] = prodStatus;
    map['Name'] = name;
    map['Company'] = company;
    map['ComparePrice'] = comparePrice;
    map['MRPDiscount'] = mRPDiscount;
    map['UnitPrice'] = unitPrice;
    map['UnitTax'] = unitTax;
    map['NetRate'] = netRate;
    map['MaxDiscount'] = maxDiscount;
    map['Tags'] = tags;
    map['Categorie'] = categorie;
    map['SubCategory'] = subCategory;
    map['ProductType'] = productType;
    map['HSNCode'] = hSNCode;
    map['Package_size'] = packageSize;
    map['Generic_strength'] = genericStrength;
    map['Generic_schedule'] = genericSchedule;
    map['Description'] = description;
    map['Prescription'] = prescription;
    map['ProductPic'] = productPic;
    map['Usage'] = usage;
    map['Alternate_medicine'] = alternateMedicine;
    map['Side_effects'] = sideEffects;
    map['How_to_use'] = howToUse;
    map['Chemical_Class'] = chemicalClass;
    map['Habit_Forming'] = habitForming;
    map['Therapeutic_Class'] = therapeuticClass;
    map['Action_Class'] = actionClass;
    map['DataTypePros'] = dataTypePros;
    map['File'] = file;
    return map;
  }

}