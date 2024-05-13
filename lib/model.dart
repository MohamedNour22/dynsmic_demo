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

// Method to build widget based on field type
  Widget buildWidget({TextEditingController? controller}) {
    switch (type) {
      case 'Text':
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: text,
            hintText: placeholder,
          ),
          validator: (value) {
            // Implement validation logic here
          },
          // Implement other properties and event handlers as needed
        );
      case 'Button':
        return ElevatedButton(
          onPressed: () {
            // Implement button click logic here
          },
          child: Text(text ?? ''),
        );
      case 'dropdown':
        return DropdownButtonFormField<String>(
          value: null,
          onChanged: (value) {
            // Implement dropdown change logic here
          },
          items: items?.map((item) {
            return DropdownMenuItem<String>(
              value: item.key,
              child: Text(item.value ?? ''),
            );
          }).toList(),
        );
      // Add cases for other field types as needed
      default:
        return Container();
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
