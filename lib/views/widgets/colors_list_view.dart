import 'package:flutter/material.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key,required this.active,required this.color}) : super(key: key);
  final bool active;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 5),
      child: active ?  CircleAvatar(
        backgroundColor: Colors.white,
        radius:30,
        child: CircleAvatar(backgroundColor:color,radius: 25,),
      ): CircleAvatar(
        backgroundColor:color,
        radius: 30,
      ),
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors =const [
    Color(0xff493b2a),
    Color(0xff593f62),
    Color(0xff7b6d8d),
    Color(0xff8499b1),
    Color(0xffa5c4d4)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder:(context,index)=>InkWell(
          onTap:(){
              currentIndex=index;
              AddNotesCubit.get(context).color = colors[index];
            setState(() {

            });
          },
            child: ColorItem(active:currentIndex==index,color: colors[index],)),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}