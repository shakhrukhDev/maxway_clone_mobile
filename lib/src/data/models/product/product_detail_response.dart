import 'dart:convert';

/// active : true
/// active_in_menu : true
/// add_to_order : true
/// brand : {"description":{"en":"string","ru":"string","uz":"string"},"id":"string","image":"string","is_active":true,"order_no":"0","parent_id":"string","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}
/// categories : [{"active":true,"child_categories":[{"created_at":"string","description":{"en":"string","ru":"string","uz":"string"},"id":"string","image":"string","is_active":true,"name":"string","order_no":"0","parent_id":"string","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}],"description":{"en":"string","ru":"string","uz":"string"},"id":"string","image":"string","order_no":"0","parent_id":"string","products":[{"active":true,"active_in_menu":true,"brand_id":"string","categories":["string"],"currency":"string","description":{"en":"string","ru":"string","uz":"string"},"discounts":[{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}],"from_time":"string","gallery":["string"],"has_modifier":true,"id":"string","iiko_id":"string","image":"string","jowi_id":"string","off_always":true,"out_price":0,"rate_id":"string","string":"string","title":{"en":"string","ru":"string","uz":"string"},"to_time":"string","type":"string"}],"slug":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// code : "string"
/// count : "0"
/// currency : "string"
/// default_quantity : 0
/// description : {"en":"string","ru":"string","uz":"string"}
/// favorites : [{"active":true,"brand_id":"string","categories":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"discounts":[{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}],"favourites":["string"],"gallery":["string"],"has_modifier":true,"id":"string","iiko_id":"string","image":"string","in_price":0,"is_divisible":true,"jowi_id":"string","measurement":"string","order":"0","out_price":0,"parent_id":"string","product_property":[{"option_id":"string","property_id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"property_ids":["string"],"rate_id":"string","relation_type":"string","string":"string","tags":["string"],"title":{"en":"string","ru":"string","uz":"string"},"type":"string"}]
/// from_time : "string"
/// gallery : ["string"]
/// has_modifier : true
/// id : "string"
/// iiko_id : "string"
/// image : "string"
/// in_price : 0
/// is_divisible : true
/// jowi_id : "string"
/// off_always : true
/// order : "0"
/// out_price : 0
/// product_property : [{"option_id":"string","property_id":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// properties : [{"active":true,"created_at":"string","description":{"en":"string","ru":"string","uz":"string"},"id":"string","options":[{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"order_no":"0","shipper_id":"string","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// rate : {"code":"string","id":"string","rate_amount":"0","slug":"string","title":"string"}
/// slug : "string"
/// tags : [{"color":"string","icon":"string","id":"string","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// title : {"en":"string","ru":"string","uz":"string"}
/// to_time : "string"
/// type : "string"
/// variant_products : [{"active":true,"brand_id":"string","categories":["string"],"count":"0","currency":"string","description":{"en":"string","ru":"string","uz":"string"},"discounts":[{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}],"favourites":["string"],"gallery":["string"],"has_modifier":true,"id":"string","iiko_id":"string","image":"string","in_price":0,"is_divisible":true,"jowi_id":"string","measurement":"string","order":"0","out_price":0,"parent_id":"string","product_property":[{"option_id":"string","property_id":"string","title":{"en":"string","ru":"string","uz":"string"}}],"property_ids":["string"],"rate_id":"string","relation_type":"string","string":"string","tags":["string"],"title":{"en":"string","ru":"string","uz":"string"},"type":"string"}]

ProductDetail productDetailResponseFromJson(String str) =>
    ProductDetail.fromJson(json.decode(str));

String productDetailResponseToJson(ProductDetail data) =>
    json.encode(data.toJson());

class ProductDetail {
  ProductDetail({
    bool? active,
    bool? activeInMenu,
    bool? addToOrder,
    Brand? brand,
    List<Categories>? categories,
    String? code,
    String? count,
    String? currency,
    num? defaultQuantity,
    Description? description,
    List<Favorites>? favorites,
    String? fromTime,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? jowiId,
    bool? offAlways,
    String? order,
    num? outPrice,
    List<ProductProperty>? productProperty,
    List<Properties>? properties,
    Rate? rate,
    String? slug,
    List<Tags>? tags,
    Title? title,
    String? toTime,
    String? type,
    List<VariantProducts>? variantProducts,
  }) {
    _active = active;
    _activeInMenu = activeInMenu;
    _addToOrder = addToOrder;
    _brand = brand;
    _categories = categories;
    _code = code;
    _count = count;
    _currency = currency;
    _defaultQuantity = defaultQuantity;
    _description = description;
    _favorites = favorites;
    _fromTime = fromTime;
    _gallery = gallery;
    _hasModifier = hasModifier;
    _id = id;
    _iikoId = iikoId;
    _image = image;
    _inPrice = inPrice;
    _isDivisible = isDivisible;
    _jowiId = jowiId;
    _offAlways = offAlways;
    _order = order;
    _outPrice = outPrice;
    _productProperty = productProperty;
    _properties = properties;
    _rate = rate;
    _slug = slug;
    _tags = tags;
    _title = title;
    _toTime = toTime;
    _type = type;
    _variantProducts = variantProducts;
  }

  ProductDetail.fromJson(dynamic json) {
    _active = json['active'];
    _activeInMenu = json['active_in_menu'];
    _addToOrder = json['add_to_order'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Categories.fromJson(v));
      });
    }
    _code = json['code'];
    _count = json['count'];
    _currency = json['currency'];
    _defaultQuantity = json['default_quantity'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    if (json['favorites'] != null) {
      _favorites = [];
      json['favorites'].forEach((v) {
        _favorites?.add(Favorites.fromJson(v));
      });
    }
    _fromTime = json['from_time'];
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _hasModifier = json['has_modifier'];
    _id = json['id'];
    _iikoId = json['iiko_id'];
    _image = json['image'];
    _inPrice = json['in_price'];
    _isDivisible = json['is_divisible'];
    _jowiId = json['jowi_id'];
    _offAlways = json['off_always'];
    _order = json['order'];
    _outPrice = json['out_price'];
    if (json['product_property'] != null) {
      _productProperty = [];
      json['product_property'].forEach((v) {
        _productProperty?.add(ProductProperty.fromJson(v));
      });
    }
    if (json['properties'] != null) {
      _properties = [];
      json['properties'].forEach((v) {
        _properties?.add(Properties.fromJson(v));
      });
    }
    _rate = json['rate'] != null ? Rate.fromJson(json['rate']) : null;
    _slug = json['slug'];
    if (json['tags'] != null) {
      _tags = [];
      json['tags'].forEach((v) {
        _tags?.add(Tags.fromJson(v));
      });
    }
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
    _toTime = json['to_time'];
    _type = json['type'];
    if (json['variant_products'] != null) {
      _variantProducts = [];
      json['variant_products'].forEach((v) {
        _variantProducts?.add(VariantProducts.fromJson(v));
      });
    }
  }

  bool? _active;
  bool? _activeInMenu;
  bool? _addToOrder;
  Brand? _brand;
  List<Categories>? _categories;
  String? _code;
  String? _count;
  String? _currency;
  num? _defaultQuantity;
  Description? _description;
  List<Favorites>? _favorites;
  String? _fromTime;
  List<String>? _gallery;
  bool? _hasModifier;
  String? _id;
  String? _iikoId;
  String? _image;
  num? _inPrice;
  bool? _isDivisible;
  String? _jowiId;
  bool? _offAlways;
  String? _order;
  num? _outPrice;
  List<ProductProperty>? _productProperty;
  List<Properties>? _properties;
  Rate? _rate;
  String? _slug;
  List<Tags>? _tags;
  Title? _title;
  String? _toTime;
  String? _type;
  List<VariantProducts>? _variantProducts;

  ProductDetail copyWith({
    bool? active,
    bool? activeInMenu,
    bool? addToOrder,
    Brand? brand,
    List<Categories>? categories,
    String? code,
    String? count,
    String? currency,
    num? defaultQuantity,
    Description? description,
    List<Favorites>? favorites,
    String? fromTime,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? jowiId,
    bool? offAlways,
    String? order,
    num? outPrice,
    List<ProductProperty>? productProperty,
    List<Properties>? properties,
    Rate? rate,
    String? slug,
    List<Tags>? tags,
    Title? title,
    String? toTime,
    String? type,
    List<VariantProducts>? variantProducts,
  }) =>
      ProductDetail(
        active: active ?? _active,
        activeInMenu: activeInMenu ?? _activeInMenu,
        addToOrder: addToOrder ?? _addToOrder,
        brand: brand ?? _brand,
        categories: categories ?? _categories,
        code: code ?? _code,
        count: count ?? _count,
        currency: currency ?? _currency,
        defaultQuantity: defaultQuantity ?? _defaultQuantity,
        description: description ?? _description,
        favorites: favorites ?? _favorites,
        fromTime: fromTime ?? _fromTime,
        gallery: gallery ?? _gallery,
        hasModifier: hasModifier ?? _hasModifier,
        id: id ?? _id,
        iikoId: iikoId ?? _iikoId,
        image: image ?? _image,
        inPrice: inPrice ?? _inPrice,
        isDivisible: isDivisible ?? _isDivisible,
        jowiId: jowiId ?? _jowiId,
        offAlways: offAlways ?? _offAlways,
        order: order ?? _order,
        outPrice: outPrice ?? _outPrice,
        productProperty: productProperty ?? _productProperty,
        properties: properties ?? _properties,
        rate: rate ?? _rate,
        slug: slug ?? _slug,
        tags: tags ?? _tags,
        title: title ?? _title,
        toTime: toTime ?? _toTime,
        type: type ?? _type,
        variantProducts: variantProducts ?? _variantProducts,
      );

  bool? get active => _active;

  bool? get activeInMenu => _activeInMenu;

  bool? get addToOrder => _addToOrder;

  Brand? get brand => _brand;

  List<Categories>? get categories => _categories;

  String? get code => _code;

  String? get count => _count;

  String? get currency => _currency;

  num? get defaultQuantity => _defaultQuantity;

  Description? get description => _description;

  List<Favorites>? get favorites => _favorites;

  String? get fromTime => _fromTime;

  List<String>? get gallery => _gallery;

  bool? get hasModifier => _hasModifier;

  String? get id => _id;

  String? get iikoId => _iikoId;

  String? get image => _image;

  num? get inPrice => _inPrice;

  bool? get isDivisible => _isDivisible;

  String? get jowiId => _jowiId;

  bool? get offAlways => _offAlways;

  String? get order => _order;

  num? get outPrice => _outPrice;

  List<ProductProperty>? get productProperty => _productProperty;

  List<Properties>? get properties => _properties;

  Rate? get rate => _rate;

  String? get slug => _slug;

  List<Tags>? get tags => _tags;

  Title? get title => _title;

  String? get toTime => _toTime;

  String? get type => _type;

  List<VariantProducts>? get variantProducts => _variantProducts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['active_in_menu'] = _activeInMenu;
    map['add_to_order'] = _addToOrder;
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['code'] = _code;
    map['count'] = _count;
    map['currency'] = _currency;
    map['default_quantity'] = _defaultQuantity;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    if (_favorites != null) {
      map['favorites'] = _favorites?.map((v) => v.toJson()).toList();
    }
    map['from_time'] = _fromTime;
    map['gallery'] = _gallery;
    map['has_modifier'] = _hasModifier;
    map['id'] = _id;
    map['iiko_id'] = _iikoId;
    map['image'] = _image;
    map['in_price'] = _inPrice;
    map['is_divisible'] = _isDivisible;
    map['jowi_id'] = _jowiId;
    map['off_always'] = _offAlways;
    map['order'] = _order;
    map['out_price'] = _outPrice;
    if (_productProperty != null) {
      map['product_property'] =
          _productProperty?.map((v) => v.toJson()).toList();
    }
    if (_properties != null) {
      map['properties'] = _properties?.map((v) => v.toJson()).toList();
    }
    if (_rate != null) {
      map['rate'] = _rate?.toJson();
    }
    map['slug'] = _slug;
    if (_tags != null) {
      map['tags'] = _tags?.map((v) => v.toJson()).toList();
    }
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    map['to_time'] = _toTime;
    map['type'] = _type;
    if (_variantProducts != null) {
      map['variant_products'] =
          _variantProducts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// active : true
/// brand_id : "string"
/// categories : ["string"]
/// count : "0"
/// currency : "string"
/// description : {"en":"string","ru":"string","uz":"string"}
/// discounts : [{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}]
/// favourites : ["string"]
/// gallery : ["string"]
/// has_modifier : true
/// id : "string"
/// iiko_id : "string"
/// image : "string"
/// in_price : 0
/// is_divisible : true
/// jowi_id : "string"
/// measurement : "string"
/// order : "0"
/// out_price : 0
/// parent_id : "string"
/// product_property : [{"option_id":"string","property_id":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// property_ids : ["string"]
/// rate_id : "string"
/// relation_type : "string"
/// string : "string"
/// tags : ["string"]
/// title : {"en":"string","ru":"string","uz":"string"}
/// type : "string"

VariantProducts variantProductsFromJson(String str) =>
    VariantProducts.fromJson(json.decode(str));

String variantProductsToJson(VariantProducts data) =>
    json.encode(data.toJson());

class VariantProducts {
  VariantProducts({
    bool? active,
    String? brandId,
    List<String>? categories,
    String? count,
    String? currency,
    Description? description,
    List<Discounts>? discounts,
    List<String>? favourites,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? jowiId,
    String? measurement,
    String? order,
    num? outPrice,
    String? parentId,
    List<ProductProperty>? productProperty,
    List<String>? propertyIds,
    String? rateId,
    String? relationType,
    String? string,
    List<String>? tags,
    Title? title,
    String? type,
  }) {
    _active = active;
    _brandId = brandId;
    _categories = categories;
    _count = count;
    _currency = currency;
    _description = description;
    _discounts = discounts;
    _favourites = favourites;
    _gallery = gallery;
    _hasModifier = hasModifier;
    _id = id;
    _iikoId = iikoId;
    _image = image;
    _inPrice = inPrice;
    _isDivisible = isDivisible;
    _jowiId = jowiId;
    _measurement = measurement;
    _order = order;
    _outPrice = outPrice;
    _parentId = parentId;
    _productProperty = productProperty;
    _propertyIds = propertyIds;
    _rateId = rateId;
    _relationType = relationType;
    _string = string;
    _tags = tags;
    _title = title;
    _type = type;
  }

  VariantProducts.fromJson(dynamic json) {
    _active = json['active'];
    _brandId = json['brand_id'];
    _categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    _count = json['count'];
    _currency = json['currency'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    if (json['discounts'] != null) {
      _discounts = [];
      json['discounts'].forEach((v) {
        _discounts?.add(Discounts.fromJson(v));
      });
    }
    _favourites =
        json['favourites'] != null ? json['favourites'].cast<String>() : [];
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _hasModifier = json['has_modifier'];
    _id = json['id'];
    _iikoId = json['iiko_id'];
    _image = json['image'];
    _inPrice = json['in_price'];
    _isDivisible = json['is_divisible'];
    _jowiId = json['jowi_id'];
    _measurement = json['measurement'];
    _order = json['order'];
    _outPrice = json['out_price'];
    _parentId = json['parent_id'];
    if (json['product_property'] != null) {
      _productProperty = [];
      json['product_property'].forEach((v) {
        _productProperty?.add(ProductProperty.fromJson(v));
      });
    }
    _propertyIds =
        json['property_ids'] != null ? json['property_ids'].cast<String>() : [];
    _rateId = json['rate_id'];
    _relationType = json['relation_type'];
    _string = json['string'];
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
    _type = json['type'];
  }

  bool? _active;
  String? _brandId;
  List<String>? _categories;
  String? _count;
  String? _currency;
  Description? _description;
  List<Discounts>? _discounts;
  List<String>? _favourites;
  List<String>? _gallery;
  bool? _hasModifier;
  String? _id;
  String? _iikoId;
  String? _image;
  num? _inPrice;
  bool? _isDivisible;
  String? _jowiId;
  String? _measurement;
  String? _order;
  num? _outPrice;
  String? _parentId;
  List<ProductProperty>? _productProperty;
  List<String>? _propertyIds;
  String? _rateId;
  String? _relationType;
  String? _string;
  List<String>? _tags;
  Title? _title;
  String? _type;

  VariantProducts copyWith({
    bool? active,
    String? brandId,
    List<String>? categories,
    String? count,
    String? currency,
    Description? description,
    List<Discounts>? discounts,
    List<String>? favourites,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? jowiId,
    String? measurement,
    String? order,
    num? outPrice,
    String? parentId,
    List<ProductProperty>? productProperty,
    List<String>? propertyIds,
    String? rateId,
    String? relationType,
    String? string,
    List<String>? tags,
    Title? title,
    String? type,
  }) =>
      VariantProducts(
        active: active ?? _active,
        brandId: brandId ?? _brandId,
        categories: categories ?? _categories,
        count: count ?? _count,
        currency: currency ?? _currency,
        description: description ?? _description,
        discounts: discounts ?? _discounts,
        favourites: favourites ?? _favourites,
        gallery: gallery ?? _gallery,
        hasModifier: hasModifier ?? _hasModifier,
        id: id ?? _id,
        iikoId: iikoId ?? _iikoId,
        image: image ?? _image,
        inPrice: inPrice ?? _inPrice,
        isDivisible: isDivisible ?? _isDivisible,
        jowiId: jowiId ?? _jowiId,
        measurement: measurement ?? _measurement,
        order: order ?? _order,
        outPrice: outPrice ?? _outPrice,
        parentId: parentId ?? _parentId,
        productProperty: productProperty ?? _productProperty,
        propertyIds: propertyIds ?? _propertyIds,
        rateId: rateId ?? _rateId,
        relationType: relationType ?? _relationType,
        string: string ?? _string,
        tags: tags ?? _tags,
        title: title ?? _title,
        type: type ?? _type,
      );

  bool? get active => _active;

  String? get brandId => _brandId;

  List<String>? get categories => _categories;

  String? get count => _count;

  String? get currency => _currency;

  Description? get description => _description;

  List<Discounts>? get discounts => _discounts;

  List<String>? get favourites => _favourites;

  List<String>? get gallery => _gallery;

  bool? get hasModifier => _hasModifier;

  String? get id => _id;

  String? get iikoId => _iikoId;

  String? get image => _image;

  num? get inPrice => _inPrice;

  bool? get isDivisible => _isDivisible;

  String? get jowiId => _jowiId;

  String? get measurement => _measurement;

  String? get order => _order;

  num? get outPrice => _outPrice;

  String? get parentId => _parentId;

  List<ProductProperty>? get productProperty => _productProperty;

  List<String>? get propertyIds => _propertyIds;

  String? get rateId => _rateId;

  String? get relationType => _relationType;

  String? get string => _string;

  List<String>? get tags => _tags;

  Title? get title => _title;

  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['brand_id'] = _brandId;
    map['categories'] = _categories;
    map['count'] = _count;
    map['currency'] = _currency;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    if (_discounts != null) {
      map['discounts'] = _discounts?.map((v) => v.toJson()).toList();
    }
    map['favourites'] = _favourites;
    map['gallery'] = _gallery;
    map['has_modifier'] = _hasModifier;
    map['id'] = _id;
    map['iiko_id'] = _iikoId;
    map['image'] = _image;
    map['in_price'] = _inPrice;
    map['is_divisible'] = _isDivisible;
    map['jowi_id'] = _jowiId;
    map['measurement'] = _measurement;
    map['order'] = _order;
    map['out_price'] = _outPrice;
    map['parent_id'] = _parentId;
    if (_productProperty != null) {
      map['product_property'] =
          _productProperty?.map((v) => v.toJson()).toList();
    }
    map['property_ids'] = _propertyIds;
    map['rate_id'] = _rateId;
    map['relation_type'] = _relationType;
    map['string'] = _string;
    map['tags'] = _tags;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    map['type'] = _type;
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

/// option_id : "string"
/// property_id : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

ProductProperty productPropertyFromJson(String str) =>
    ProductProperty.fromJson(json.decode(str));

String productPropertyToJson(ProductProperty data) =>
    json.encode(data.toJson());

class ProductProperty {
  ProductProperty({
    String? optionId,
    String? propertyId,
    Title? title,
  }) {
    _optionId = optionId;
    _propertyId = propertyId;
    _title = title;
  }

  ProductProperty.fromJson(dynamic json) {
    _optionId = json['option_id'];
    _propertyId = json['property_id'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  String? _optionId;
  String? _propertyId;
  Title? _title;

  ProductProperty copyWith({
    String? optionId,
    String? propertyId,
    Title? title,
  }) =>
      ProductProperty(
        optionId: optionId ?? _optionId,
        propertyId: propertyId ?? _propertyId,
        title: title ?? _title,
      );

  String? get optionId => _optionId;

  String? get propertyId => _propertyId;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['option_id'] = _optionId;
    map['property_id'] = _propertyId;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// discount_price : 0
/// id : "string"
/// name : {"en":"string","ru":"string","uz":"string"}

Discounts discountsFromJson(String str) => Discounts.fromJson(json.decode(str));

String discountsToJson(Discounts data) => json.encode(data.toJson());

class Discounts {
  Discounts({
    num? discountPrice,
    String? id,
    Name? name,
  }) {
    _discountPrice = discountPrice;
    _id = id;
    _name = name;
  }

  Discounts.fromJson(dynamic json) {
    _discountPrice = json['discount_price'];
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
  }

  num? _discountPrice;
  String? _id;
  Name? _name;

  Discounts copyWith({
    num? discountPrice,
    String? id,
    Name? name,
  }) =>
      Discounts(
        discountPrice: discountPrice ?? _discountPrice,
        id: id ?? _id,
        name: name ?? _name,
      );

  num? get discountPrice => _discountPrice;

  String? get id => _id;

  Name? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['discount_price'] = _discountPrice;
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    return map;
  }
}

/// en : "string"
/// ru : "string"
/// uz : "string"

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

/// color : "string"
/// icon : "string"
/// id : "string"
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

Tags tagsFromJson(String str) => Tags.fromJson(json.decode(str));

String tagsToJson(Tags data) => json.encode(data.toJson());

class Tags {
  Tags({
    String? color,
    String? icon,
    String? id,
    String? slug,
    Title? title,
  }) {
    _color = color;
    _icon = icon;
    _id = id;
    _slug = slug;
    _title = title;
  }

  Tags.fromJson(dynamic json) {
    _color = json['color'];
    _icon = json['icon'];
    _id = json['id'];
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  String? _color;
  String? _icon;
  String? _id;
  String? _slug;
  Title? _title;

  Tags copyWith({
    String? color,
    String? icon,
    String? id,
    String? slug,
    Title? title,
  }) =>
      Tags(
        color: color ?? _color,
        icon: icon ?? _icon,
        id: id ?? _id,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  String? get color => _color;

  String? get icon => _icon;

  String? get id => _id;

  String? get slug => _slug;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = _color;
    map['icon'] = _icon;
    map['id'] = _id;
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// code : "string"
/// id : "string"
/// rate_amount : "0"
/// slug : "string"
/// title : "string"

Rate rateFromJson(String str) => Rate.fromJson(json.decode(str));

String rateToJson(Rate data) => json.encode(data.toJson());

class Rate {
  Rate({
    String? code,
    String? id,
    String? rateAmount,
    String? slug,
    String? title,
  }) {
    _code = code;
    _id = id;
    _rateAmount = rateAmount;
    _slug = slug;
    _title = title;
  }

  Rate.fromJson(dynamic json) {
    _code = json['code'];
    _id = json['id'];
    _rateAmount = json['rate_amount'];
    _slug = json['slug'];
    _title = json['title'];
  }

  String? _code;
  String? _id;
  String? _rateAmount;
  String? _slug;
  String? _title;

  Rate copyWith({
    String? code,
    String? id,
    String? rateAmount,
    String? slug,
    String? title,
  }) =>
      Rate(
        code: code ?? _code,
        id: id ?? _id,
        rateAmount: rateAmount ?? _rateAmount,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  String? get code => _code;

  String? get id => _id;

  String? get rateAmount => _rateAmount;

  String? get slug => _slug;

  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['id'] = _id;
    map['rate_amount'] = _rateAmount;
    map['slug'] = _slug;
    map['title'] = _title;
    return map;
  }
}

/// active : true
/// created_at : "string"
/// description : {"en":"string","ru":"string","uz":"string"}
/// id : "string"
/// options : [{"id":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// order_no : "0"
/// shipper_id : "string"
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

Properties propertiesFromJson(String str) =>
    Properties.fromJson(json.decode(str));

String propertiesToJson(Properties data) => json.encode(data.toJson());

class Properties {
  Properties({
    bool? active,
    String? createdAt,
    Description? description,
    String? id,
    List<ProductOptions>? options,
    String? orderNo,
    String? shipperId,
    String? slug,
    Title? title,
  }) {
    _active = active;
    _createdAt = createdAt;
    _description = description;
    _id = id;
    _options = options;
    _orderNo = orderNo;
    _shipperId = shipperId;
    _slug = slug;
    _title = title;
  }

  Properties.fromJson(dynamic json) {
    _active = json['active'];
    _createdAt = json['created_at'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _id = json['id'];
    if (json['options'] != null) {
      _options = [];
      json['options'].forEach((v) {
        _options?.add(ProductOptions.fromJson(v));
      });
    }
    _orderNo = json['order_no'];
    _shipperId = json['shipper_id'];
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  bool? _active;
  String? _createdAt;
  Description? _description;
  String? _id;
  List<ProductOptions>? _options;
  String? _orderNo;
  String? _shipperId;
  String? _slug;
  Title? _title;

  Properties copyWith({
    bool? active,
    String? createdAt,
    Description? description,
    String? id,
    List<ProductOptions>? options,
    String? orderNo,
    String? shipperId,
    String? slug,
    Title? title,
  }) =>
      Properties(
        active: active ?? _active,
        createdAt: createdAt ?? _createdAt,
        description: description ?? _description,
        id: id ?? _id,
        options: options ?? _options,
        orderNo: orderNo ?? _orderNo,
        shipperId: shipperId ?? _shipperId,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  bool? get active => _active;

  String? get createdAt => _createdAt;

  Description? get description => _description;

  String? get id => _id;

  List<ProductOptions>? get options => _options;

  String? get orderNo => _orderNo;

  String? get shipperId => _shipperId;

  String? get slug => _slug;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['created_at'] = _createdAt;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['id'] = _id;
    if (_options != null) {
      map['options'] = _options?.map((v) => v.toJson()).toList();
    }
    map['order_no'] = _orderNo;
    map['shipper_id'] = _shipperId;
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// id : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

ProductOptions optionsFromJson(String str) =>
    ProductOptions.fromJson(json.decode(str));

String optionsToJson(ProductOptions data) => json.encode(data.toJson());

class ProductOptions {
  ProductOptions({
    String? id,
    Title? title,
  }) {
    _id = id;
    _title = title;
  }

  ProductOptions.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  String? _id;
  Title? _title;

  ProductOptions copyWith({
    String? id,
    Title? title,
  }) =>
      ProductOptions(
        id: id ?? _id,
        title: title ?? _title,
      );

  String? get id => _id;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// active : true
/// brand_id : "string"
/// categories : ["string"]
/// count : "0"
/// currency : "string"
/// description : {"en":"string","ru":"string","uz":"string"}
/// discounts : [{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}]
/// favourites : ["string"]
/// gallery : ["string"]
/// has_modifier : true
/// id : "string"
/// iiko_id : "string"
/// image : "string"
/// in_price : 0
/// is_divisible : true
/// jowi_id : "string"
/// measurement : "string"
/// order : "0"
/// out_price : 0
/// parent_id : "string"
/// product_property : [{"option_id":"string","property_id":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// property_ids : ["string"]
/// rate_id : "string"
/// relation_type : "string"
/// string : "string"
/// tags : ["string"]
/// title : {"en":"string","ru":"string","uz":"string"}
/// type : "string"

Favorites favoritesFromJson(String str) => Favorites.fromJson(json.decode(str));

String favoritesToJson(Favorites data) => json.encode(data.toJson());

class Favorites {
  Favorites({
    bool? active,
    String? brandId,
    List<String>? categories,
    String? count,
    String? currency,
    Description? description,
    List<Discounts>? discounts,
    List<String>? favourites,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? jowiId,
    String? measurement,
    String? order,
    num? outPrice,
    String? parentId,
    List<ProductProperty>? productProperty,
    List<String>? propertyIds,
    String? rateId,
    String? relationType,
    String? string,
    List<String>? tags,
    Title? title,
    String? type,
  }) {
    _active = active;
    _brandId = brandId;
    _categories = categories;
    _count = count;
    _currency = currency;
    _description = description;
    _discounts = discounts;
    _favourites = favourites;
    _gallery = gallery;
    _hasModifier = hasModifier;
    _id = id;
    _iikoId = iikoId;
    _image = image;
    _inPrice = inPrice;
    _isDivisible = isDivisible;
    _jowiId = jowiId;
    _measurement = measurement;
    _order = order;
    _outPrice = outPrice;
    _parentId = parentId;
    _productProperty = productProperty;
    _propertyIds = propertyIds;
    _rateId = rateId;
    _relationType = relationType;
    _string = string;
    _tags = tags;
    _title = title;
    _type = type;
  }

  Favorites.fromJson(dynamic json) {
    _active = json['active'];
    _brandId = json['brand_id'];
    _categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    _count = json['count'];
    _currency = json['currency'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    if (json['discounts'] != null) {
      _discounts = [];
      json['discounts'].forEach((v) {
        _discounts?.add(Discounts.fromJson(v));
      });
    }
    _favourites =
        json['favourites'] != null ? json['favourites'].cast<String>() : [];
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _hasModifier = json['has_modifier'];
    _id = json['id'];
    _iikoId = json['iiko_id'];
    _image = json['image'];
    _inPrice = json['in_price'];
    _isDivisible = json['is_divisible'];
    _jowiId = json['jowi_id'];
    _measurement = json['measurement'];
    _order = json['order'];
    _outPrice = json['out_price'];
    _parentId = json['parent_id'];
    if (json['product_property'] != null) {
      _productProperty = [];
      json['product_property'].forEach((v) {
        _productProperty?.add(ProductProperty.fromJson(v));
      });
    }
    _propertyIds =
        json['property_ids'] != null ? json['property_ids'].cast<String>() : [];
    _rateId = json['rate_id'];
    _relationType = json['relation_type'];
    _string = json['string'];
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
    _type = json['type'];
  }

  bool? _active;
  String? _brandId;
  List<String>? _categories;
  String? _count;
  String? _currency;
  Description? _description;
  List<Discounts>? _discounts;
  List<String>? _favourites;
  List<String>? _gallery;
  bool? _hasModifier;
  String? _id;
  String? _iikoId;
  String? _image;
  num? _inPrice;
  bool? _isDivisible;
  String? _jowiId;
  String? _measurement;
  String? _order;
  num? _outPrice;
  String? _parentId;
  List<ProductProperty>? _productProperty;
  List<String>? _propertyIds;
  String? _rateId;
  String? _relationType;
  String? _string;
  List<String>? _tags;
  Title? _title;
  String? _type;

  Favorites copyWith({
    bool? active,
    String? brandId,
    List<String>? categories,
    String? count,
    String? currency,
    Description? description,
    List<Discounts>? discounts,
    List<String>? favourites,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    num? inPrice,
    bool? isDivisible,
    String? jowiId,
    String? measurement,
    String? order,
    num? outPrice,
    String? parentId,
    List<ProductProperty>? productProperty,
    List<String>? propertyIds,
    String? rateId,
    String? relationType,
    String? string,
    List<String>? tags,
    Title? title,
    String? type,
  }) =>
      Favorites(
        active: active ?? _active,
        brandId: brandId ?? _brandId,
        categories: categories ?? _categories,
        count: count ?? _count,
        currency: currency ?? _currency,
        description: description ?? _description,
        discounts: discounts ?? _discounts,
        favourites: favourites ?? _favourites,
        gallery: gallery ?? _gallery,
        hasModifier: hasModifier ?? _hasModifier,
        id: id ?? _id,
        iikoId: iikoId ?? _iikoId,
        image: image ?? _image,
        inPrice: inPrice ?? _inPrice,
        isDivisible: isDivisible ?? _isDivisible,
        jowiId: jowiId ?? _jowiId,
        measurement: measurement ?? _measurement,
        order: order ?? _order,
        outPrice: outPrice ?? _outPrice,
        parentId: parentId ?? _parentId,
        productProperty: productProperty ?? _productProperty,
        propertyIds: propertyIds ?? _propertyIds,
        rateId: rateId ?? _rateId,
        relationType: relationType ?? _relationType,
        string: string ?? _string,
        tags: tags ?? _tags,
        title: title ?? _title,
        type: type ?? _type,
      );

  bool? get active => _active;

  String? get brandId => _brandId;

  List<String>? get categories => _categories;

  String? get count => _count;

  String? get currency => _currency;

  Description? get description => _description;

  List<Discounts>? get discounts => _discounts;

  List<String>? get favourites => _favourites;

  List<String>? get gallery => _gallery;

  bool? get hasModifier => _hasModifier;

  String? get id => _id;

  String? get iikoId => _iikoId;

  String? get image => _image;

  num? get inPrice => _inPrice;

  bool? get isDivisible => _isDivisible;

  String? get jowiId => _jowiId;

  String? get measurement => _measurement;

  String? get order => _order;

  num? get outPrice => _outPrice;

  String? get parentId => _parentId;

  List<ProductProperty>? get productProperty => _productProperty;

  List<String>? get propertyIds => _propertyIds;

  String? get rateId => _rateId;

  String? get relationType => _relationType;

  String? get string => _string;

  List<String>? get tags => _tags;

  Title? get title => _title;

  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['brand_id'] = _brandId;
    map['categories'] = _categories;
    map['count'] = _count;
    map['currency'] = _currency;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    if (_discounts != null) {
      map['discounts'] = _discounts?.map((v) => v.toJson()).toList();
    }
    map['favourites'] = _favourites;
    map['gallery'] = _gallery;
    map['has_modifier'] = _hasModifier;
    map['id'] = _id;
    map['iiko_id'] = _iikoId;
    map['image'] = _image;
    map['in_price'] = _inPrice;
    map['is_divisible'] = _isDivisible;
    map['jowi_id'] = _jowiId;
    map['measurement'] = _measurement;
    map['order'] = _order;
    map['out_price'] = _outPrice;
    map['parent_id'] = _parentId;
    if (_productProperty != null) {
      map['product_property'] =
          _productProperty?.map((v) => v.toJson()).toList();
    }
    map['property_ids'] = _propertyIds;
    map['rate_id'] = _rateId;
    map['relation_type'] = _relationType;
    map['string'] = _string;
    map['tags'] = _tags;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    map['type'] = _type;
    return map;
  }
}

/// active : true
/// child_categories : [{"created_at":"string","description":{"en":"string","ru":"string","uz":"string"},"id":"string","image":"string","is_active":true,"name":"string","order_no":"0","parent_id":"string","slug":"string","title":{"en":"string","ru":"string","uz":"string"}}]
/// description : {"en":"string","ru":"string","uz":"string"}
/// id : "string"
/// image : "string"
/// order_no : "0"
/// parent_id : "string"
/// products : [{"active":true,"active_in_menu":true,"brand_id":"string","categories":["string"],"currency":"string","description":{"en":"string","ru":"string","uz":"string"},"discounts":[{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}],"from_time":"string","gallery":["string"],"has_modifier":true,"id":"string","iiko_id":"string","image":"string","jowi_id":"string","off_always":true,"out_price":0,"rate_id":"string","string":"string","title":{"en":"string","ru":"string","uz":"string"},"to_time":"string","type":"string"}]
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

Categories categoriesFromJson(String str) =>
    Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
    bool? active,
    List<ChildCategories>? childCategories,
    Description? description,
    String? id,
    String? image,
    String? orderNo,
    String? parentId,
    List<Products>? products,
    String? slug,
    Title? title,
  }) {
    _active = active;
    _childCategories = childCategories;
    _description = description;
    _id = id;
    _image = image;
    _orderNo = orderNo;
    _parentId = parentId;
    _products = products;
    _slug = slug;
    _title = title;
  }

  Categories.fromJson(dynamic json) {
    _active = json['active'];
    if (json['child_categories'] != null) {
      _childCategories = [];
      json['child_categories'].forEach((v) {
        _childCategories?.add(ChildCategories.fromJson(v));
      });
    }
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _id = json['id'];
    _image = json['image'];
    _orderNo = json['order_no'];
    _parentId = json['parent_id'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  bool? _active;
  List<ChildCategories>? _childCategories;
  Description? _description;
  String? _id;
  String? _image;
  String? _orderNo;
  String? _parentId;
  List<Products>? _products;
  String? _slug;
  Title? _title;

  Categories copyWith({
    bool? active,
    List<ChildCategories>? childCategories,
    Description? description,
    String? id,
    String? image,
    String? orderNo,
    String? parentId,
    List<Products>? products,
    String? slug,
    Title? title,
  }) =>
      Categories(
        active: active ?? _active,
        childCategories: childCategories ?? _childCategories,
        description: description ?? _description,
        id: id ?? _id,
        image: image ?? _image,
        orderNo: orderNo ?? _orderNo,
        parentId: parentId ?? _parentId,
        products: products ?? _products,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  bool? get active => _active;

  List<ChildCategories>? get childCategories => _childCategories;

  Description? get description => _description;

  String? get id => _id;

  String? get image => _image;

  String? get orderNo => _orderNo;

  String? get parentId => _parentId;

  List<Products>? get products => _products;

  String? get slug => _slug;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    if (_childCategories != null) {
      map['child_categories'] =
          _childCategories?.map((v) => v.toJson()).toList();
    }
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['id'] = _id;
    map['image'] = _image;
    map['order_no'] = _orderNo;
    map['parent_id'] = _parentId;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// active : true
/// active_in_menu : true
/// brand_id : "string"
/// categories : ["string"]
/// currency : "string"
/// description : {"en":"string","ru":"string","uz":"string"}
/// discounts : [{"discount_price":0,"id":"string","name":{"en":"string","ru":"string","uz":"string"}}]
/// from_time : "string"
/// gallery : ["string"]
/// has_modifier : true
/// id : "string"
/// iiko_id : "string"
/// image : "string"
/// jowi_id : "string"
/// off_always : true
/// out_price : 0
/// rate_id : "string"
/// string : "string"
/// title : {"en":"string","ru":"string","uz":"string"}
/// to_time : "string"
/// type : "string"

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    bool? active,
    bool? activeInMenu,
    String? brandId,
    List<String>? categories,
    String? currency,
    Description? description,
    List<Discounts>? discounts,
    String? fromTime,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    String? jowiId,
    bool? offAlways,
    num? outPrice,
    String? rateId,
    String? string,
    Title? title,
    String? toTime,
    String? type,
  }) {
    _active = active;
    _activeInMenu = activeInMenu;
    _brandId = brandId;
    _categories = categories;
    _currency = currency;
    _description = description;
    _discounts = discounts;
    _fromTime = fromTime;
    _gallery = gallery;
    _hasModifier = hasModifier;
    _id = id;
    _iikoId = iikoId;
    _image = image;
    _jowiId = jowiId;
    _offAlways = offAlways;
    _outPrice = outPrice;
    _rateId = rateId;
    _string = string;
    _title = title;
    _toTime = toTime;
    _type = type;
  }

  Products.fromJson(dynamic json) {
    _active = json['active'];
    _activeInMenu = json['active_in_menu'];
    _brandId = json['brand_id'];
    _categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    _currency = json['currency'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    if (json['discounts'] != null) {
      _discounts = [];
      json['discounts'].forEach((v) {
        _discounts?.add(Discounts.fromJson(v));
      });
    }
    _fromTime = json['from_time'];
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _hasModifier = json['has_modifier'];
    _id = json['id'];
    _iikoId = json['iiko_id'];
    _image = json['image'];
    _jowiId = json['jowi_id'];
    _offAlways = json['off_always'];
    _outPrice = json['out_price'];
    _rateId = json['rate_id'];
    _string = json['string'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
    _toTime = json['to_time'];
    _type = json['type'];
  }

  bool? _active;
  bool? _activeInMenu;
  String? _brandId;
  List<String>? _categories;
  String? _currency;
  Description? _description;
  List<Discounts>? _discounts;
  String? _fromTime;
  List<String>? _gallery;
  bool? _hasModifier;
  String? _id;
  String? _iikoId;
  String? _image;
  String? _jowiId;
  bool? _offAlways;
  num? _outPrice;
  String? _rateId;
  String? _string;
  Title? _title;
  String? _toTime;
  String? _type;

  Products copyWith({
    bool? active,
    bool? activeInMenu,
    String? brandId,
    List<String>? categories,
    String? currency,
    Description? description,
    List<Discounts>? discounts,
    String? fromTime,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    String? jowiId,
    bool? offAlways,
    num? outPrice,
    String? rateId,
    String? string,
    Title? title,
    String? toTime,
    String? type,
  }) =>
      Products(
        active: active ?? _active,
        activeInMenu: activeInMenu ?? _activeInMenu,
        brandId: brandId ?? _brandId,
        categories: categories ?? _categories,
        currency: currency ?? _currency,
        description: description ?? _description,
        discounts: discounts ?? _discounts,
        fromTime: fromTime ?? _fromTime,
        gallery: gallery ?? _gallery,
        hasModifier: hasModifier ?? _hasModifier,
        id: id ?? _id,
        iikoId: iikoId ?? _iikoId,
        image: image ?? _image,
        jowiId: jowiId ?? _jowiId,
        offAlways: offAlways ?? _offAlways,
        outPrice: outPrice ?? _outPrice,
        rateId: rateId ?? _rateId,
        string: string ?? _string,
        title: title ?? _title,
        toTime: toTime ?? _toTime,
        type: type ?? _type,
      );

  bool? get active => _active;

  bool? get activeInMenu => _activeInMenu;

  String? get brandId => _brandId;

  List<String>? get categories => _categories;

  String? get currency => _currency;

  Description? get description => _description;

  List<Discounts>? get discounts => _discounts;

  String? get fromTime => _fromTime;

  List<String>? get gallery => _gallery;

  bool? get hasModifier => _hasModifier;

  String? get id => _id;

  String? get iikoId => _iikoId;

  String? get image => _image;

  String? get jowiId => _jowiId;

  bool? get offAlways => _offAlways;

  num? get outPrice => _outPrice;

  String? get rateId => _rateId;

  String? get string => _string;

  Title? get title => _title;

  String? get toTime => _toTime;

  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['active_in_menu'] = _activeInMenu;
    map['brand_id'] = _brandId;
    map['categories'] = _categories;
    map['currency'] = _currency;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    if (_discounts != null) {
      map['discounts'] = _discounts?.map((v) => v.toJson()).toList();
    }
    map['from_time'] = _fromTime;
    map['gallery'] = _gallery;
    map['has_modifier'] = _hasModifier;
    map['id'] = _id;
    map['iiko_id'] = _iikoId;
    map['image'] = _image;
    map['jowi_id'] = _jowiId;
    map['off_always'] = _offAlways;
    map['out_price'] = _outPrice;
    map['rate_id'] = _rateId;
    map['string'] = _string;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    map['to_time'] = _toTime;
    map['type'] = _type;
    return map;
  }
}

/// created_at : "string"
/// description : {"en":"string","ru":"string","uz":"string"}
/// id : "string"
/// image : "string"
/// is_active : true
/// name : "string"
/// order_no : "0"
/// parent_id : "string"
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

ChildCategories childCategoriesFromJson(String str) =>
    ChildCategories.fromJson(json.decode(str));

String childCategoriesToJson(ChildCategories data) =>
    json.encode(data.toJson());

class ChildCategories {
  ChildCategories({
    String? createdAt,
    Description? description,
    String? id,
    String? image,
    bool? isActive,
    String? name,
    String? orderNo,
    String? parentId,
    String? slug,
    Title? title,
  }) {
    _createdAt = createdAt;
    _description = description;
    _id = id;
    _image = image;
    _isActive = isActive;
    _name = name;
    _orderNo = orderNo;
    _parentId = parentId;
    _slug = slug;
    _title = title;
  }

  ChildCategories.fromJson(dynamic json) {
    _createdAt = json['created_at'];
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _id = json['id'];
    _image = json['image'];
    _isActive = json['is_active'];
    _name = json['name'];
    _orderNo = json['order_no'];
    _parentId = json['parent_id'];
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  String? _createdAt;
  Description? _description;
  String? _id;
  String? _image;
  bool? _isActive;
  String? _name;
  String? _orderNo;
  String? _parentId;
  String? _slug;
  Title? _title;

  ChildCategories copyWith({
    String? createdAt,
    Description? description,
    String? id,
    String? image,
    bool? isActive,
    String? name,
    String? orderNo,
    String? parentId,
    String? slug,
    Title? title,
  }) =>
      ChildCategories(
        createdAt: createdAt ?? _createdAt,
        description: description ?? _description,
        id: id ?? _id,
        image: image ?? _image,
        isActive: isActive ?? _isActive,
        name: name ?? _name,
        orderNo: orderNo ?? _orderNo,
        parentId: parentId ?? _parentId,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  String? get createdAt => _createdAt;

  Description? get description => _description;

  String? get id => _id;

  String? get image => _image;

  bool? get isActive => _isActive;

  String? get name => _name;

  String? get orderNo => _orderNo;

  String? get parentId => _parentId;

  String? get slug => _slug;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['created_at'] = _createdAt;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['id'] = _id;
    map['image'] = _image;
    map['is_active'] = _isActive;
    map['name'] = _name;
    map['order_no'] = _orderNo;
    map['parent_id'] = _parentId;
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}

/// description : {"en":"string","ru":"string","uz":"string"}
/// id : "string"
/// image : "string"
/// is_active : true
/// order_no : "0"
/// parent_id : "string"
/// slug : "string"
/// title : {"en":"string","ru":"string","uz":"string"}

Brand brandFromJson(String str) => Brand.fromJson(json.decode(str));

String brandToJson(Brand data) => json.encode(data.toJson());

class Brand {
  Brand({
    Description? description,
    String? id,
    String? image,
    bool? isActive,
    String? orderNo,
    String? parentId,
    String? slug,
    Title? title,
  }) {
    _description = description;
    _id = id;
    _image = image;
    _isActive = isActive;
    _orderNo = orderNo;
    _parentId = parentId;
    _slug = slug;
    _title = title;
  }

  Brand.fromJson(dynamic json) {
    _description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    _id = json['id'];
    _image = json['image'];
    _isActive = json['is_active'];
    _orderNo = json['order_no'];
    _parentId = json['parent_id'];
    _slug = json['slug'];
    _title = json['title'] != null ? Title.fromJson(json['title']) : null;
  }

  Description? _description;
  String? _id;
  String? _image;
  bool? _isActive;
  String? _orderNo;
  String? _parentId;
  String? _slug;
  Title? _title;

  Brand copyWith({
    Description? description,
    String? id,
    String? image,
    bool? isActive,
    String? orderNo,
    String? parentId,
    String? slug,
    Title? title,
  }) =>
      Brand(
        description: description ?? _description,
        id: id ?? _id,
        image: image ?? _image,
        isActive: isActive ?? _isActive,
        orderNo: orderNo ?? _orderNo,
        parentId: parentId ?? _parentId,
        slug: slug ?? _slug,
        title: title ?? _title,
      );

  Description? get description => _description;

  String? get id => _id;

  String? get image => _image;

  bool? get isActive => _isActive;

  String? get orderNo => _orderNo;

  String? get parentId => _parentId;

  String? get slug => _slug;

  Title? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['id'] = _id;
    map['image'] = _image;
    map['is_active'] = _isActive;
    map['order_no'] = _orderNo;
    map['parent_id'] = _parentId;
    map['slug'] = _slug;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    return map;
  }
}
