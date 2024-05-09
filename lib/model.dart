class Model {
  Model({
      this.fields,});

  Model.fromJson(dynamic json) {
    if (json['Fields'] != null) {
      fields = [];
      json['Fields'].forEach((v) {
        fields?.add(Fields.fromJson(v));
      });
    }
  }
  List<Fields>? fields;
Model copyWith({  List<Fields>? fields,
}) => Model(  fields: fields ?? this.fields,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fields != null) {
      map['Fields'] = fields?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Fields {
  Fields({
      this.name, 
      this.type, 
      this.text, 
      this.placeholder, 
      this.validations, 
      this.clickEvent, 
      this.selectEvent, 
      this.blurEvent, 
      this.items, 
      this.style,});

  Fields.fromJson(dynamic json) {
    name = json['Name'];
    type = json['Type'];
    text = json['Text'];
    placeholder = json['Placeholder'];
    if (json['Validations'] != null) {
      validations = [];
      json['Validations'].forEach((v) {
        validations?.add(Validations.fromJson(v));
      });
    }
    clickEvent = json['ClickEvent'];
    selectEvent = json['SelectEvent'];
    blurEvent = json['BlurEvent'];
    if (json['Items'] != null) {
      items = [];
      json['Items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    if (json['Style'] != null) {
      style = [];
      json['Style'].forEach((v) {
        style?.add(Style.fromJson(v));
      });
    }
  }
  String? name;
  String? type;
  String? text;
  String? placeholder;
  List<Validations>? validations;
  String? clickEvent;
  String? selectEvent;
  String? blurEvent;
  List<Items>? items;
  List<Style>? style;
Fields copyWith({  String? name,
  String? type,
  String? text,
  String? placeholder,
  List<Validations>? validations,
  String? clickEvent,
  String? selectEvent,
  String? blurEvent,
  List<Items>? items,
  List<Style>? style,
}) => Fields(  name: name ?? this.name,
  type: type ?? this.type,
  text: text ?? this.text,
  placeholder: placeholder ?? this.placeholder,
  validations: validations ?? this.validations,
  clickEvent: clickEvent ?? this.clickEvent,
  selectEvent: selectEvent ?? this.selectEvent,
  blurEvent: blurEvent ?? this.blurEvent,
  items: items ?? this.items,
  style: style ?? this.style,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['Type'] = type;
    map['Text'] = text;
    map['Placeholder'] = placeholder;
    if (validations != null) {
      map['Validations'] = validations?.map((v) => v.toJson()).toList();
    }
    map['ClickEvent'] = clickEvent;
    map['SelectEvent'] = selectEvent;
    map['BlurEvent'] = blurEvent;
    if (items != null) {
      map['Items'] = items?.map((v) => v.toJson()).toList();
    }
    if (style != null) {
      map['Style'] = style?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Style {
  Style({
      this.width, 
      this.height, 
      this.color, 
      this.fontColor,});

  Style.fromJson(dynamic json) {
    width = json['Width'];
    height = json['Height'];
    color = json['Color'];
    fontColor = json['FontColor'];
  }
  String? width;
  String? height;
  String? color;
  String? fontColor;
Style copyWith({  String? width,
  String? height,
  String? color,
  String? fontColor,
}) => Style(  width: width ?? this.width,
  height: height ?? this.height,
  color: color ?? this.color,
  fontColor: fontColor ?? this.fontColor,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Width'] = width;
    map['Height'] = height;
    map['Color'] = color;
    map['FontColor'] = fontColor;
    return map;
  }

}

class Items {
  Items({
      this.key, 
      this.value,});

  Items.fromJson(dynamic json) {
    key = json['Key'];
    value = json['Value'];
  }
  String? key;
  String? value;
Items copyWith({  String? key,
  String? value,
}) => Items(  key: key ?? this.key,
  value: value ?? this.value,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Key'] = key;
    map['Value'] = value;
    return map;
  }

}

class Validations {
  Validations({
      this.required, 
      this.maxlength,});

  Validations.fromJson(dynamic json) {
    required = json['required'];
    maxlength = json['maxlength'];
  }
  String? required;
  String? maxlength;
Validations copyWith({  String? required,
  String? maxlength,
}) => Validations(  required: required ?? this.required,
  maxlength: maxlength ?? this.maxlength,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['required'] = required;
    map['maxlength'] = maxlength;
    return map;
  }

}