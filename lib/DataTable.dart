import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Datatble(),));
}
class Datatble extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.teal,
     body: Center(
       child: Container(color: Colors.blueGrey,
         child: DataTable(columns: [
           DataColumn(label: Text("Name",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),)),
           DataColumn(label: Text("Age",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),)),
           DataColumn(label: Text("Course",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),)),
           DataColumn(label: Text("Salary",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),)),

         ], rows: [
           DataRow(cells: [DataCell(Text("Anaz")),
             DataCell(Text("18")),
             DataCell(Text("Flutter")),
             DataCell(Text("1500000")),
           ]
           ),
           DataRow(cells: [DataCell(Text("Anaz")),
             DataCell(Text("18")),
             DataCell(Text("Flutter")),
             DataCell(Text("1500000")),
           ]
           ),
           DataRow(cells: [DataCell(Text("Anaz")),
             DataCell(Text("18")),
             DataCell(Text("Flutter")),
             DataCell(Text("1500000")),
           ]
           ),
           DataRow(cells: [DataCell(Text("Anaz")),
             DataCell(Text("18")),
             DataCell(Text("Flutter")),
             DataCell(Text("1500000")),
           ]
           ),
         ],

         ),
       )
     ),
   );
  }

}