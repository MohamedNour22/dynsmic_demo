import 'package:flutter/material.dart';

class Model {
  Model({
    this.fields,
  });

  List<Fields>? fields;

  factory Model.fromJson(dynamic json) {
    return Model(
      fields: json['Fields'] != null
          ? List<Fields>.from(json['Fields'].map((x) => Fields.fromJson(x)))
          : null,
    );
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
  });

  String? name;
  String? type;
  String? text;
  String? placeholder;
  List<Validations>? validations;
  String? clickEvent;
  String? selectEvent;
  String? blurEvent;
  List<Items>? items;

  factory Fields.fromJson(dynamic json) {
    return Fields(
      name: json['Name'],
      type: json['Type'],
      text: json['Text'],
      placeholder: json['Placeholder'],
      validations: json['Validations'] != null
          ? List<Validations>.from(
          json['Validations'].map((x) => Validations.fromJson(x)))
          : null,
      clickEvent: json['ClickEvent'],
      selectEvent: json['SelectEvent'],
      blurEvent: json['BlurEvent'],
      items: json['Items'] != null
          ? List<Items>.from(json['Items'].map((x) => Items.fromJson(x)))
          : null,
    );
  }

  Widget buildWidget() {
    switch (type) {
      case 'Text':
        return TextField(
          decoration: InputDecoration(
            labelText: text,
            hintText: placeholder,
          ),
          onChanged: (value) {
            // handle text change
          },
        );
      case 'Button':
        return ElevatedButton(
          onPressed: () {
            // handle button click
          },
          child: Text(text ?? ''),
        );
      case 'dropdown':
        return DropdownButtonFormField(
          decoration: InputDecoration(
            labelText: text,
            hintText: placeholder,
          ),
          value: null,
          onChanged: (value) {
            // handle dropdown item selection
          },
          items: items?.map((item) {
            return DropdownMenuItem(
              value: item.key,
              child: Text(item.value ?? ''),
            );
          }).toList(),
        );
      default:
        return SizedBox(); // Return empty widget for unsupported types
    }
  }
}

class Items {
  Items({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory Items.fromJson(dynamic json) {
    return Items(
      key: json['Key'],
      value: json['Value'],
    );
  }
}

class Validations {
  Validations({
    this.required,
    this.maxlength,
  });

  String? required;
  String? maxlength;

  factory Validations.fromJson(dynamic json) {
    return Validations(
      required: json['required'],
      maxlength: json['maxlength'],
    );
  }
}