import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_botton.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

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
          BlocBuilder<AddNotesCubit,NotesStates>(
            builder:(context,state)=> CustomButton(
              loading:state is AddNotesLoadingState ? true : false,
                onPressed:(){
              if(formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var cubit = AddNotesCubit.get(context);
                var note = NoteModel(title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.green.value);
                cubit.addNote(note);
              }
              else{
                autoValidateMode  = AutovalidateMode.always;
                setState(() {

                });
              }
            }),
          ),
        ],
      ),
    );
  }
}
