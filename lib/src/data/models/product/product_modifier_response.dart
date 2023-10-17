import 'dart:convert';

/// count : "0"
/// product_modifiers : {"group_modifiers":[{"active":true,"add_to_price":true,"category_name":{"en":"string","ru":"string","uz":"string"},"code":"string","created_at":"string","from_product_id":"string","id":"string","is_checkbox":true,"is_compulsory":true,"max_amount":0,"min_amount":0,"name":{"en":"string","ru":"string","uz":"string"},"order":"string","price":"string","shipper_id":"string","to_product_id":"string","type":"string","variants":[{"brand_id":"string","category_ids":["string"],"combo_ids":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"gallery":["string"],"id":"string","image":"string","in_price":0,"is_divisible":true,"measurement":"string","order_no":"0","out_price":0,"property_groups":[{"description":{"en":"string","ru":"string","uz":"string"},"id":"string","is_active":true,"options":[{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"},"type":"string","value":"string"}],"rate_id":"string","tag_ids":["string"],"title":{"en":"string","ru":"string","uz":"string"}}]}],"single_modifiers":[{"active":true,"add_to_price":true,"category_name":{"en":"string","ru":"string","uz":"string"},"code":"string","created_at":"string","from_product_id":"string","id":"string","is_checkbox":true,"is_compulsory":true,"max_amount":0,"min_amount":0,"name":{"en":"string","ru":"string","uz":"string"},"order":"string","price":"string","shipper_id":"string","to_product_id":"string","type":"string","variants":[{"brand_id":"string","category_ids":["string"],"combo_ids":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"gallery":["string"],"id":"string","image":"string","in_price":0,"is_divisible":true,"measurement":"string","order_no":"0","out_price":0,"property_groups":[{"description":{"en":"string","ru":"string","uz":"string"},"id":"string","is_active":true,"options":[{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"},"type":"string","value":"string"}],"rate_id":"string","tag_ids":["string"],"title":{"en":"string","ru":"string","uz":"string"}}]}]}

ProductModifierResponse productModifierResponseFromJson(String str) =>
    ProductModifierResponse.fromJson(json.decode(str));

String productModifierResponseToJson(ProductModifierResponse data) =>
    json.encode(data.toJson());

class ProductModifierResponse {
  ProductModifierResponse({
    String? count,
    ProductModifiers? productModifiers,
  }) {
    _count = count;
    _productModifiers = productModifiers;
  }

  ProductModifierResponse.fromJson(dynamic json) {
    _count = json['count'];
    _productModifiers = json['product_modifiers'] != null
        ? ProductModifiers.fromJson(json['product_modifiers'])
        : null;
  }

  String? _count;
  ProductModifiers? _productModifiers;

  ProductModifierResponse copyWith({
    String? count,
    ProductModifiers? productModifiers,
  }) =>
      ProductModifierResponse(
        count: count ?? _count,
        productModifiers: productModifiers ?? _productModifiers,
      );

  String? get count => _count;

  ProductModifiers? get productModifiers => _productModifiers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    if (_productModifiers != null) {
      map['product_modifiers'] = _productModifiers?.toJson();
    }
    return map;
  }
}

/// group_modifiers : [{"active":true,"add_to_price":true,"category_name":{"en":"string","ru":"string","uz":"string"},"code":"string","created_at":"string","from_product_id":"string","id":"string","is_checkbox":true,"is_compulsory":true,"max_amount":0,"min_amount":0,"name":{"en":"string","ru":"string","uz":"string"},"order":"string","price":"string","shipper_id":"string","to_product_id":"string","type":"string","variants":[{"brand_id":"string","category_ids":["string"],"combo_ids":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"gallery":["string"],"id":"string","image":"string","in_price":0,"is_divisible":true,"measurement":"string","order_no":"0","out_price":0,"property_groups":[{"description":{"en":"string","ru":"string","uz":"string"},"id":"string","is_active":true,"options":[{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"},"type":"string","value":"string"}],"rate_id":"string","tag_ids":["string"],"title":{"en":"string","ru":"string","uz":"string"}}]}]
/// single_modifiers : [{"active":true,"add_to_price":true,"category_name":{"en":"string","ru":"string","uz":"string"},"code":"string","created_at":"string","from_product_id":"string","id":"string","is_checkbox":true,"is_compulsory":true,"max_amount":0,"min_amount":0,"name":{"en":"string","ru":"string","uz":"string"},"order":"string","price":"string","shipper_id":"string","to_product_id":"string","type":"string","variants":[{"brand_id":"string","category_ids":["string"],"combo_ids":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"gallery":["string"],"id":"string","image":"string","in_price":0,"is_divisible":true,"measurement":"string","order_no":"0","out_price":0,"property_groups":[{"description":{"en":"string","ru":"string","uz":"string"},"id":"string","is_active":true,"options":[{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"},"type":"string","value":"string"}],"rate_id":"string","tag_ids":["string"],"title":{"en":"string","ru":"string","uz":"string"}}]}]

ProductModifiers productModifiersFromJson(String str) =>
    ProductModifiers.fromJson(json.decode(str));

String productModifiersToJson(ProductModifiers data) =>
    json.encode(data.toJson());

class ProductModifiers {
  ProductModifiers({
    List<Modifiers>? groupModifiers,
    List<Modifiers>? singleModifiers,
  }) {
    _groupModifiers = groupModifiers;
    _singleModifiers = singleModifiers;
  }

  ProductModifiers.fromJson(dynamic json) {
    if (json['group_modifiers'] != null) {
      _groupModifiers = [];
      json['group_modifiers'].forEach((v) {
        _groupModifiers?.add(Modifiers.fromJson(v));
      });
    }
    if (json['single_modifiers'] != null) {
      _singleModifiers = [];
      json['single_modifiers'].forEach((v) {
        _singleModifiers?.add(Modifiers.fromJson(v));
      });
    }
  }

  List<Modifiers>? _groupModifiers;
  List<Modifiers>? _singleModifiers;

  ProductModifiers copyWith({
    List<Modifiers>? groupModifiers,
    List<Modifiers>? singleModifiers,
  }) =>
      ProductModifiers(
        groupModifiers: groupModifiers ?? _groupModifiers,
        singleModifiers: singleModifiers ?? _singleModifiers,
      );

  List<Modifiers>? get groupModifiers => _groupModifiers;

  List<Modifiers>? get singleModifiers => _singleModifiers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_groupModifiers != null) {
      map['group_modifiers'] = _groupModifiers?.map((v) => v.toJson()).toList();
    }
    if (_singleModifiers != null) {
      map['single_modifiers'] =
          _singleModifiers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// active : true
/// add_to_price : true
/// category_name : {"en":"string","ru":"string","uz":"string"}
/// code : "string"
/// created_at : "string"
/// from_product_id : "string"
/// id : "string"
/// is_checkbox : true
/// is_compulsory : true
/// max_amount : 0
/// min_amount : 0
/// name : {"en":"string","ru":"string","uz":"string"}
/// order : "string"
/// price : "string"
/// shipper_id : "string"
/// to_product_id : "string"
/// type : "string"
/// variants : [{"brand_id":"string","category_ids":["string"],"combo_ids":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"gallery":["string"],"id":"string","image":"string","in_price":0,"is_divisible":true,"measurement":"string","order_no":"0","out_price":0,"property_groups":[{"description":{"en":"string","ru":"string","uz":"string"},"id":"string","is_active":true,"options":[{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"},"type":"string","value":"string"}],"rate_id":"string","tag_ids":["string"],"title":{"en":"string","ru":"string","uz":"string"}}]

Modifiers singleModifiersFromJson(String str) =>
    Modifiers.fromJson(json.decode(str));

String singleModifiersToJson(Modifiers data) => json.encode(data.toJson());

class Modifiers {
  Modifiers({
    bool? active,
    bool? addToPrice,
    CategoryName? categoryName,
    String? code,
    String? createdAt,
    String? fromProductId,
    String? id,
    bool? isCheckbox,
    bool? isCompulsory,
    num? maxAmount,
    num? minAmount,
    Name? name,
    String? order,
    String? price,
    String? shipperId,
    String? toProductId,
    String? type,
    List<ModifierVariants>? variants,
  }) {
    _active = active;
    _addToPrice = addToPrice;
    _categoryName = categoryName;
    _code = code;
    _createdAt = createdAt;
    _fromProductId = fromProductId;
    _id = id;
    _isCheckbox = isCheckbox;
    _isCompulsory = isCompulsory;
    _maxAmount = maxAmount;
    _minAmount = minAmount;
    _name = name;
    _order = order;
    _price = price;
    _shipperId = shipperId;
    _toProductId = toProductId;
    _type = type;
    _variants = variants;
  }

  Modifiers.fromJson(dynamic json) {
    _active = json['active'];
    _addToPrice = json['add_to_price'];
    _categoryName = json['category_name'] != null
        ? CategoryName.fromJson(json['category_name'])
        : null;
    _code = json['code'];
    _createdAt = json['created_at'];
    _fromProductId = json['from_product_id'];
    _id = json['id'];
    _isCheckbox = json['is_checkbox'];
    _isCompulsory = json['is_compulsory'];
    _maxAmount = json['max_amount'];
    _minAmount = json['min_amount'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _order = json['order'];
    _price = json['price'];
    _shipperId = json['shipper_id'];
    _toProductId = json['to_product_id'];
    _type = json['type'];
    if (json['variants'] != null) {
      _variants = [];
      json['variants'].forEach((v) {
        _variants?.add(ModifierVariants.fromJson(v));
      });
    }
  }

  bool? _active;
  bool? _addToPrice;
  CategoryName? _categoryName;
  String? _code;
  String? _createdAt;
  String? _fromProductId;
  String? _id;
  bool? _isCheckbox;
  bool? _isCompulsory;
  num? _maxAmount;
  num? _minAmount;
  Name? _name;
  String? _order;
  String? _price;
  String? _shipperId;
  String? _toProductId;
  String? _type;
  List<ModifierVariants>? _variants;
  ModifierVariants? selectedVariant;

  Modifiers copyWith({
    bool? active,
    bool? addToPrice,
    CategoryName? categoryName,
    String? code,
    String? createdAt,
    String? fromProductId,
    String? id,
    bool? isCheckbox,
    bool? isCompulsory,
    num? maxAmount,
    num? minAmount,
    Name? name,
    String? order,
    String? price,
    String? shipperId,
    String? toProductId,
    String? type,
    List<ModifierVariants>? variants,
  }) =>
      Modifiers(
        active: active ?? _active,
        addToPrice: addToPrice ?? _addToPrice,
        categoryName: categoryName ?? _categoryName,
        code: code ?? _code,
        createdAt: createdAt ?? _createdAt,
        fromProductId: fromProductId ?? _fromProductId,
        id: id ?? _id,
        isCheckbox: isCheckbox ?? _isCheckbox,
        isCompulsory: isCompulsory ?? _isCompulsory,
        maxAmount: maxAmount ?? _maxAmount,
        minAmount: minAmount ?? _minAmount,
        name: name ?? _name,
        order: order ?? _order,
        price: price ?? _price,
        shipperId: shipperId ?? _shipperId,
        toProductId: toProductId ?? _toProductId,
        type: type ?? _type,
        variants: variants ?? _variants,
      );

  bool? get active => _active;

  bool? get addToPrice => _addToPrice;

  CategoryName? get categoryName => _categoryName;

  String? get code => _code;

  String? get createdAt => _createdAt;

  String? get fromProductId => _fromProductId;

  String? get id => _id;

  bool? get isCheckbox => _isCheckbox;

  bool? get isCompulsory => _isCompulsory;

  num? get maxAmount => _maxAmount;

  num? get minAmount => _minAmount;

  Name? get name => _name;

  String? get order => _order;

  String? get price => _price;

  String? get shipperId => _shipperId;

  String? get toProductId => _toProductId;

  String? get type => _type;

  List<ModifierVariants>? get variants => _variants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['add_to_price'] = _addToPrice;
    if (_categoryName != null) {
      map['category_name'] = _categoryName?.toJson();
    }
    map['code'] = _code;
    map['created_at'] = _createdAt;
    map['from_product_id'] = _fromProductId;
    map['id'] = _id;
    map['is_checkbox'] = _isCheckbox;
    map['is_compulsory'] = _isCompulsory;
    map['max_amount'] = _maxAmount;
    map['min_amount'] = _minAmount;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['order'] = _order;
    map['price'] = _price;
    map['shipper_id'] = _shipperId;
    map['to_product_id'] = _toProductId;
    map['type'] = _type;
    if (_variants != null) {
      map['variants'] = _variants?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// brand_id : "string"
/// category_ids : ["string"]
/// combo_ids : ["string"]
/// count : "0"
/// currency : "string"
/// description : {"en":"string","ru":"string","uz":"string"}
/// gallery : ["string"]
/// id : "string"
/// image : "string"
/// in_price : 0
/// is_divisible : true
/// measurement : "string"
/// order_no : "0"
/// out_price : 0
/// property_groups : [{"description":{"en":"string","ru":"string","uz":"string"},"id":"string","is_active":true,"options":[{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"},"type":"string","value":"string"}]
/// rate_id : "string"
/// tag_ids : ["string"]
/// title : {"en":"string","ru":"string","uz":"string"}

ModifierVariants variantsFromJson(String str) =>
    ModifierVariants.fromJson(json.decode(str));

String variantsToJson(ModifierVariants data) => json.encode(data.toJson());

class ModifierVariants {
  ModifierVariants({
    String? brandId,
    List<String>? categoryIds,
    List<String>? comboIds,
    String? count,
    String? currency,
    Description? description,
    List<String>? gallery,
    String? id,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? measurement,
    String? orderNo,
    num? outPrice,
    List<PropertyGroups>? propertyGroups,
    String? rateId,
    List<String>? tagIds,
    Title? title,
  }) {
    _brandId = brandId;
    _categoryIds = categoryIds;
    _comboIds = comboIds;
    _count = count;
    _currency = currency;
    _description = description;
    _gallery = gallery;
    _id = id;
    _image = image;
    _inPrice = inPrice;
    _isDivisible = isDivisible;
    _measurement = measurement;
    _orderNo = orderNo;
    _outPrice = outPrice;
    _propertyGroups = propertyGroups;
    _rateId = rateId;
    _tagIds = tagIds;
    _title = title;
  }

  ModifierVariants.fromJson(dynamic json) {
    _brandId = json['brand_id'];
    _categoryIds =
        json['category_ids'] != null ? json['category_ids'].cast<String>() : [];
    _comboIds =
        json['combo_ids'] != null ? json['combo_ids'].cast<String>() : [];
    _count = json['count'];
    _currency = json['currency'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _id = json['id'];
    _image = json['image'];
    _inPrice = json['in_price'];
    _isDivisible = json['is_divisible'];
    _measurement = json['measurement'];
    _orderNo = json['order_no'];
    _outPrice = json['out_price'];
    if (json['property_groups'] != null) {
      _propertyGroups = [];
      json['property_groups'].forEach((v) {
        _propertyGroups?.add(PropertyGroups.fromJson(v));
      });
    }
    _rateId = json['rate_id'];
    _tagIds = json['tag_ids'] != null ? json['tag_ids'].cast<String>() : [];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  String? _brandId;
  List<String>? _categoryIds;
  List<String>? _comboIds;
  String? _count;
  String? _currency;
  Description? _description;
  List<String>? _gallery;
  String? _id;
  String? _image;
  num? _inPrice;
  bool? _isDivisible;
  String? _measurement;
  String? _orderNo;
  num? _outPrice;
  List<PropertyGroups>? _propertyGroups;
  String? _rateId;
  List<String>? _tagIds;
  Title? _title;

  ModifierVariants copyWith({
    String? brandId,
    List<String>? categoryIds,
    List<String>? comboIds,
    String? count,
    String? currency,
    Description? description,
    List<String>? gallery,
    String? id,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? measurement,
    String? orderNo,
    num? outPrice,
    List<PropertyGroups>? propertyGroups,
    String? rateId,
    List<String>? tagIds,
    Title? title,
  }) =>
      ModifierVariants(
        brandId: brandId ?? _brandId,
        categoryIds: categoryIds ?? _categoryIds,
        comboIds: comboIds ?? _comboIds,
        count: count ?? _count,
        currency: currency ?? _currency,
        description: description ?? _description,
        gallery: gallery ?? _gallery,
        id: id ?? _id,
        image: image ?? _image,
        inPrice: inPrice ?? _inPrice,
        isDivisible: isDivisible ?? _isDivisible,
        measurement: measurement ?? _measurement,
        orderNo: orderNo ?? _orderNo,
        outPrice: outPrice ?? _outPrice,
        propertyGroups: propertyGroups ?? _propertyGroups,
        rateId: rateId ?? _rateId,
        tagIds: tagIds ?? _tagIds,
        title: title ?? _title,
      );

  String? get brandId => _brandId;

  List<String>? get categoryIds => _categoryIds;

  List<String>? get comboIds => _comboIds;

  String? get count => _count;

  String? get currency => _currency;

  Description? get description => _description;

  List<String>? get gallery => _gallery;

  String? get id => _id;

  String? get image => _image;

  num? get inPrice => _inPrice;

  bool? get isDivisible => _isDivisible;

  String? get measurement => _measurement;

  String? get orderNo => _orderNo;

  num? get outPrice => _outPrice;

  List<PropertyGroups>? get propertyGroups => _propertyGroups;

  String? get rateId => _rateId;

  List<String>? get tagIds => _tagIds;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['brand_id'] = _brandId;
    map['category_ids'] = _categoryIds;
    map['combo_ids'] = _comboIds;
    map['count'] = _count;
    map['currency'] = _currency;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['gallery'] = _gallery;
    map['id'] = _id;
    map['image'] = _image;
    map['in_price'] = _inPrice;
    map['is_divisible'] = _isDivisible;
    map['measurement'] = _measurement;
    map['order_no'] = _orderNo;
    map['out_price'] = _outPrice;
    if (_propertyGroups != null) {
      map['property_groups'] = _propertyGroups?.map((v) => v.toJson()).toList();
    }
    map['rate_id'] = _rateId;
    map['tag_ids'] = _tagIds;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// en : "string"
/// ru : "string"
/// uz : "string"

Title titleFromJson(String str) => Title.fromJson(json.decode(str));

String titleToJson(Title data) => json.encode(data.toJson());

class Title {
  Title({
    String? en,
    String? ru,
    String? uz,
  }) {
    _en = en;
    _ru = ru;
    _uz = uz;
  }

  Title.fromJson(dynamic json) {
    _en = json['en'];
    _ru = json['ru'];
    _uz = json['uz'];
  }

  String? _en;
  String? _ru;
  String? _uz;

  Title copyWith({
    String? en,
    String? ru,
    String? uz,
  }) =>
      Title(
        en: en ?? _en,
        ru: ru ?? _ru,
        uz: uz ?? _uz,
      );

  String? get en => _en;

  String? get ru => _ru;

  String? get uz => _uz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['ru'] = _ru;
    map['uz'] = _uz;
    return map;
  }
}

/// description : {"en":"string","ru":"string","uz":"string"}
/// id : "string"
/// is_active : true
/// options : [{"active":true,"description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order":"0","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// order : "0"
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}
/// type : "string"
/// value : "string"

PropertyGroups propertyGroupsFromJson(String str) =>
    PropertyGroups.fromJson(json.decode(str));

String propertyGroupsToJson(PropertyGroups data) => json.encode(data.toJson());

class PropertyGroups {
  PropertyGroups({
    Description? description,
    String? id,
    bool? isActive,
    List<PropertyGroupOptions>? options,
    String? order,
    String? slug,
    Title? title,
    String? type,
    String? value,
  }) {
    _description = description;
    _id = id;
    _isActive = isActive;
    _options = options;
    _order = order;
    _slug = slug;
    _title = title;
    _type = type;
    _value = value;
  }

  PropertyGroups.fromJson(dynamic json) {
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _id = json['id'];
    _isActive = json['is_active'];
    if (json['options'] != null) {
      _options = [];
      json['options'].forEach((v) {
        _options?.add(PropertyGroupOptions.fromJson(v));
      });
    }
    _order = json['order'];
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
    _type = json['type'];
    _value = json['value'];
  }

  Description? _description;
  String? _id;
  bool? _isActive;
  List<PropertyGroupOptions>? _options;
  String? _order;
  String? _slug;
  Title? _title;
  String? _type;
  String? _value;

  PropertyGroups copyWith({
    Description? description,
    String? id,
    bool? isActive,
    List<PropertyGroupOptions>? options,
    String? order,
    String? slug,
    Title? title,
    String? type,
    String? value,
  }) =>
      PropertyGroups(
        description: description ?? _description,
        id: id ?? _id,
        isActive: isActive ?? _isActive,
        options: options ?? _options,
        order: order ?? _order,
        slug: slug ?? _slug,
        title: title ?? _title,
        type: type ?? _type,
        value: value ?? _value,
      );

  Description? get description => _description;

  String? get id => _id;

  bool? get isActive => _isActive;

  List<PropertyGroupOptions>? get options => _options;

  String? get order => _order;

  String? get slug => _slug;

  Title? get title => _title;

  String? get type => _type;

  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['id'] = _id;
    map['is_active'] = _isActive;
    if (_options != null) {
      map['options'] = _options?.map((v) => v.toJson()).toList();
    }
    map['order'] = _order;
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    map['type'] = _type;
    map['value'] = _value;
    return map;
  }
}

/// active : true
/// description : {"en":"string","ru":"string","uz":"string"}
/// id : "string"
/// options : [{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// order : "0"
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

PropertyGroupOptions optionsFromJson(String str) =>
    PropertyGroupOptions.fromJson(json.decode(str));

String optionsToJson(PropertyGroupOptions data) => json.encode(data.toJson());

class PropertyGroupOptions {
  PropertyGroupOptions({
    bool? active,
    Description? description,
    String? id,
    List<PropertyGroupOptions>? options,
    String? order,
    String? slug,
    Title? title,
  }) {
    _active = active;
    _description = description;
    _id = id;
    _options = options;
    _order = order;
    _slug = slug;
    _title = title;
  }

  PropertyGroupOptions.fromJson(dynamic json) {
    _active = json['active'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _id = json['id'];
    if (json['options'] != null) {
      _options = [];
      json['options'].forEach((v) {
        _options?.add(PropertyGroupOptions.fromJson(v));
      });
    }
    _order = json['order'];
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  bool? _active;
  Description? _description;
  String? _id;
  List<PropertyGroupOptions>? _options;
  String? _order;
  String? _slug;
  Title? _title;

  PropertyGroupOptions copyWith({
    bool? active,
    Description? description,
    String? id,
    List<PropertyGroupOptions>? options,
    String? order,
    String? slug,
    Title? title,
  }) =>
      PropertyGroupOptions(
        active: active ?? _active,
        description: description ?? _description,
        id: id ?? _id,
        options: options ?? _options,
        order: order ?? _order,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  bool? get active => _active;

  Description? get description => _description;

  String? get id => _id;

  List<PropertyGroupOptions>? get options => _options;

  String? get order => _order;

  String? get slug => _slug;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['id'] = _id;
    if (_options != null) {
      map['options'] = _options?.map((v) => v.toJson()).toList();
    }
    map['order'] = _order;
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

Description descriptionFromJson(String str) =>
    Description.fromJson(json.decode(str));

String descriptionToJson(Description data) => json.encode(data.toJson());

class Description {
  Description({
    String? en,
    String? ru,
    String? uz,
  }) {
    _en = en;
    _ru = ru;
    _uz = uz;
  }

  Description.fromJson(dynamic json) {
    _en = json['en'];
    _ru = json['ru'];
    _uz = json['uz'];
  }

  String? _en;
  String? _ru;
  String? _uz;

  Description copyWith({
    String? en,
    String? ru,
    String? uz,
  }) =>
      Description(
        en: en ?? _en,
        ru: ru ?? _ru,
        uz: uz ?? _uz,
      );

  String? get en => _en;

  String? get ru => _ru;

  String? get uz => _uz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['ru'] = _ru;
    map['uz'] = _uz;
    return map;
  }
}

Name nameFromJson(String str) => Name.fromJson(json.decode(str));

String nameToJson(Name data) => json.encode(data.toJson());

class Name {
  Name({
    String? en,
    String? ru,
    String? uz,
  }) {
    _en = en;
    _ru = ru;
    _uz = uz;
  }

  Name.fromJson(dynamic json) {
    _en = json['en'];
    _ru = json['ru'];
    _uz = json['uz'];
  }

  String? _en;
  String? _ru;
  String? _uz;

  Name copyWith({
    String? en,
    String? ru,
    String? uz,
  }) =>
      Name(
        en: en ?? _en,
        ru: ru ?? _ru,
        uz: uz ?? _uz,
      );

  String? get en => _en;

  String? get ru => _ru;

  String? get uz => _uz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['ru'] = _ru;
    map['uz'] = _uz;
    return map;
  }
}

/// en : "string"
/// ru : "string"
/// uz : "string"

CategoryName categoryNameFromJson(String str) =>
    CategoryName.fromJson(json.decode(str));

String categoryNameToJson(CategoryName data) => json.encode(data.toJson());

class CategoryName {
  CategoryName({
    String? en,
    String? ru,
    String? uz,
  }) {
    _en = en;
    _ru = ru;
    _uz = uz;
  }

  CategoryName.fromJson(dynamic json) {
    _en = json['en'];
    _ru = json['ru'];
    _uz = json['uz'];
  }

  String? _en;
  String? _ru;
  String? _uz;

  CategoryName copyWith({
    String? en,
    String? ru,
    String? uz,
  }) =>
      CategoryName(
        en: en ?? _en,
        ru: ru ?? _ru,
        uz: uz ?? _uz,
      );

  String? get en => _en;

  String? get ru => _ru;

  String? get uz => _uz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['ru'] = _ru;
    map['uz'] = _uz;
    return map;
  }
}
