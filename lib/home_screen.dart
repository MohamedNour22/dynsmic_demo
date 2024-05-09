import 'dart:convert';
import 'dart:developer';

import 'package:dynsmic_demo/model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
var x={
  "Fields": [
    {
      "Name": "usernameTextField",
      "Type": "Text",
      "Text": "",
      "Placeholder": "Insert Name Here",
      "Validations": [
        {
          "required": "True",
          "maxlength": "100"
        }
      ],
      "ClickEvent": "",
      "SelectEvent": "",
      "BlurEvent": "TextEntered()",
      "Items": [
        {
          "Key": "1",
          "Value": "Item 1"
        },
        {
          "Key": "2",
          "Value": "Item 2"
        }
      ],
      "Style": [
        {
          "Width": "100",
          "Height": "30",
          "Color": "",
          "FontColor": ""
        }
      ]
    },
    {
      "Name": "ButtonField",
      "Type": "Button",
      "Text": "Submit",
      "Placeholder": "",
      "Validations": [
        {
          "required": "True",
          "maxlength": ""
        }
      ],
      "ClickEvent": "ClickFunction()",
      "SelectEvent": "",
      "BlurEvent": "",
      "Items": [],
      "Style": {
        "Width": "100",
        "Height": "30",
        "Color": "",
        "FontColor": ""
      }
    },
    {
      "Name": "dropDownField",
      "Type": "dropdown",
      "Text": "Select Item",
      "Placeholder": "Select Item",
      "Validations": [
        {
          "required": "True",
          "maxlength": ""
        }
      ],
      "ClickEvent": "",
      "SelectEvent": "ItemSelected()",
      "BlurEvent": "",
      "Items": [
        {
          "Key": "1",
          "Value": "Item 1"
        },
        {
          "Key": "2",
          "Value": "Item 2"
        }
      ],
      "Style": {
        "Width": "100",
        "Height": "30",
        "Color": "",
        "FontColor": ""
      }
    }
  ]
};
  @override
  void initState() {
    // TODO: initState
    Model model=Model.fromJson({x
    });
    print(model);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
