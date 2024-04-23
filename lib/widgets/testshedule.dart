import 'package:flutter/material.dart';

class TestShedule extends StatefulWidget {
  final String startTime;
  final String endTime;
  final String subjectName;
  final String teacherName;
  final String classroomBody;
  const TestShedule({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.subjectName,
    required this.teacherName,
    required this.classroomBody,
  });

  @override
  State<TestShedule> createState() => _TestSheduleState();
}

class _TestSheduleState extends State<TestShedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
           // decoration: BoxDecoration(
           //   border: Border.all(
           //     color: Colors.grey,
           //     width: 0.5,
           //     style: BorderStyle.solid
           //   )
           // ),
           // color: Colors.red,
           padding: EdgeInsets.only(
               left: MediaQuery.of(context).size.width * 0.05,
               right: MediaQuery.of(context).size.width * 0.05
           ),
           width: MediaQuery.of(context).size.width * 1,
           height: MediaQuery.of(context).size.height * 0.1,
           child: Row(
             children: [
               Container(
                 child: Column(
                   children: [
                     Text(widget.startTime),
                     Text(widget.endTime)
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05)),
               Container(
                 child: Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         widget.subjectName,
                         overflow: TextOverflow.ellipsis,
                         maxLines: 4,
                         softWrap: true,
                         style: TextStyle(
                             fontWeight: FontWeight.bold
                         ),
                       ),
                       Row(
                         //mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.person, size: 16,),
                           Text(widget.teacherName, style: TextStyle(
                               fontWeight: FontWeight.w100,
                               fontSize: 12
                           ),),
                         ],
                       ),
                       Text(widget.classroomBody, style: TextStyle(
                           fontWeight: FontWeight.w100,
                           color: Colors.grey,
                           fontSize: 10
                       ),),
                     ],
                   ),
                 ),
               )
             ],
           ),
         );
  }
}
