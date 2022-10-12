import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditForm extends StatelessWidget {
  const EditForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.title,
    required this.note,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController title;
  final TextEditingController note;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: Get.width * 0.95,
              child: TextFormField(
                style: TextStyle(
                  fontSize: Get.width * 0.06
                ),
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Title",
                ),
                controller: title,
              ),
            ),
          ),
          Divider(
            indent: Get.width * 0.2,
            endIndent: Get.width * 0.2,
          ),
          Expanded(
            flex: 9,
            child: SizedBox(
              width: Get.width * 0.95,
              child: TextFormField(
                style: TextStyle(
                  fontSize: Get.width * 0.05
                ),
                maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Note"
              ),
              controller: note,
              ),
            ),
          )
        ],
      ),
    );
  }
}