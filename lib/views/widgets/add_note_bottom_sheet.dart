import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_botton.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: SingleChildScrollView(
        child: AddNoteForm()
    )
    );
  }
}
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  var formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
      children: [
        CustomTextFiled(hintText: 'Title',onSaved:(value){
         title = value;
        },),
        const SizedBox(height: 20,),
        CustomTextFiled(hintText: 'Content',maxLines: 5,onSaved:(value){
          subTitle = value;
        },),
        const SizedBox(height: 50,),
        CustomButton(onPressed:(){
          if(formKey.currentState!.validate()){
            formKey.currentState!.save();
          }
          else{
            autoValidateMode  = AutovalidateMode.always;
            setState(() {

            });
          }
        }),
      ],
    ),
    );
  }
}
