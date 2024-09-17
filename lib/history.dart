// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'constant.dart';
//
// class CallHistoryPage extends StatefulWidget {
//   @override
//   _CallHistoryPageState createState() => _CallHistoryPageState();
// }
//
// class _CallHistoryPageState extends State<CallHistoryPage> {
//   List<bool> _selectedRows = List.generate(12, (index) => false);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: secondaryColor,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Card(
//                 color: secondaryColor,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 elevation: 4,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: SingleChildScrollView(
//                     child: DataTable(
//                       columns: [
//                         DataColumn(
//                           label: Row(
//                             children: [
//                               Icon(Icons.check_box_outline_blank, color: greenColor),
//                               SizedBox(width: 4),
//                               Text(''),
//                             ],
//                           ),
//                         ),
//                         DataColumn(
//                           label: Row(
//                             children: [
//                               Icon(Icons.person_outline_outlined, color: greenColor),
//                               SizedBox(width: 4),
//                               Text('User Name'),
//                             ],
//                           ),
//                         ),
//                         DataColumn(
//                           label: Row(
//                             children: [
//                               Icon(Icons.phone, color: greenColor),
//                               SizedBox(width: 4),
//                               Text('Phone Number'),
//                             ],
//                           ),
//                         ),
//                         DataColumn(
//                           label: Row(
//                             children: [
//                               Icon(Icons.phone_forwarded_sharp, color: greenColor),
//                               SizedBox(width: 4),
//                               Text('Call Type'),
//                             ],
//                           ),
//                         ),
//                         DataColumn(
//                           label: Row(
//                             children: [
//                               Icon(Icons.timer, color: greenColor),
//                               SizedBox(width: 4),
//                               Text('Duration'),
//                             ],
//                           ),
//                         ),
//                         DataColumn(
//                           label: Row(
//                             children: [
//                               Icon(Icons.calendar_today, color: greenColor),
//                               SizedBox(width: 4),
//                               Text('Date and Time'),
//                             ],
//                           ),
//                         ),
//                       ],
//                       rows: _createRows(),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.arrow_back_ios),
//                         onPressed: () {},
//                       ),
//                       for (int i = 1; i <= 2; i++)
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 4),
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: secondaryColor,
//                               padding: EdgeInsets.symmetric(
//                                   vertical: 10, horizontal: 20),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8)
//                               ),
//                             ),
//                             onPressed: () {},
//                             child: Text(
//                               '$i',
//                               style: TextStyle(color: primaryColor),
//                             ),
//                           ),
//                         ),
//                       Text('...'),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: secondaryColor,
//                           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: Text(
//                           '15',
//                           style: TextStyle(color: primaryColor),
//                         ),
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.arrow_forward_ios),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                   Text(
//                     'Showing 1 of 48 pages',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<DataRow> _createRows() {
//     return List<DataRow>.generate(12, (index) {
//       bool isSelected = _selectedRows[index];
//       return DataRow(cells: [
//         DataCell(
//           Checkbox(
//             value: isSelected,
//             onChanged: (bool? value) {
//               setState(() {
//                 _selectedRows[index] = value!;
//               });
//             },
//             checkColor: secondaryColor,
//             activeColor: greenColor,
//           ),
//         ),
//         DataCell(Row(
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/sj.jpg'),
//             ),
//             SizedBox(width: 8),
//             Text('Anas ibn Nadhar'),
//           ],
//         )),
//         DataCell(Text('(405) 555-0128')),
//         DataCell(Row(
//           children: [
//             Icon(
//               index % 2 == 0 ? Icons.arrow_downward : Icons.arrow_upward,
//               color: index % 2 == 0 ? Colors.green : Colors.red,
//             ),
//             SizedBox(width: 4),
//             Text(index % 2 == 0 ? 'Incoming' : 'Outgoing'),
//           ],
//         )),
//         DataCell(Text('00:36')),
//         DataCell(Text('Jan 11, 2023 - 01:49 pm')),
//       ]);
//     });
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'models.dart';

class CallHistoryPage extends StatefulWidget {
  @override
  _CallHistoryPageState createState() => _CallHistoryPageState();
}

class _CallHistoryPageState extends State<CallHistoryPage> {
  List<Call> _calls = [];
  bool _isLoading = true;
  List<bool> _selectedRows = List.generate(12, (index) => false); // Initialize selected rows

  @override
  void initState() {
    super.initState();
    _fetchCalls();
  }git config --global user.email "rizwanriz7522@gmail.com



  Future<void> _fetchCalls() async {
    try {
      List<Call> calls = await CallApiService().fetchCalls(); // Ensure CallApiService matches your class
      setState(() {
        _calls = calls;
        _isLoading = false;
      });
    } catch (e) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: Row(
                          children: [
                            Icon(Icons.check_box_outline_blank,
                                color: greenColor),
                            SizedBox(width: 4),
                            Text(''),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: [
                            Icon(Icons.person_outline_outlined,
                                color: greenColor),
                            SizedBox(width: 4),
                            Text('User Name'),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: [
                            Icon(Icons.phone, color: greenColor),
                            SizedBox(width: 4),
                            Text('Phone Number'),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: [
                            Icon(Icons.phone_forwarded_sharp,
                                color: greenColor),
                            SizedBox(width: 4),
                            Text('Call Type'),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: [
                            Icon(Icons.timer, color: greenColor),
                            SizedBox(width: 4),
                            Text('Duration'),
                          ],
                        ),
                      ),
                      DataColumn(
                        label: Row(
                          children: [
                            Icon(Icons.calendar_today, color: greenColor),
                            SizedBox(width: 4),
                            Text('Date and Time'),
                          ],
                        ),
                      ),
                    ],
                    rows: _createRows(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {},
                    ),
                    for (int i = 1; i <= 2; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {},
                          child: Text(
                            '$i',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ),
                    Text('...'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        '15',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
                Text(
                  'Showing 1 of 48 pages',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<DataRow> _createRows() {
    return List<DataRow>.generate(12, (index) {
      bool isSelected = _selectedRows[index];
      return DataRow(cells: [
        DataCell(
          Checkbox(
            value: isSelected,
            onChanged: (bool? value) {
              setState(() {
                _selectedRows[index] = value!;
              });
            },
            checkColor: secondaryColor,
            activeColor: greenColor,
          ),
        ),
        DataCell(Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/sj.jpg'),
            ),
            SizedBox(width: 8),
            Text('Anas ibn Nadhar'),
          ],
        )),
        DataCell(Text('(405) 555-0128')),
        DataCell(Row(
          children: [
            Icon(
              index % 2 == 0 ? Icons.arrow_downward : Icons.arrow_upward,
              color: index % 2 == 0 ? Colors.green : Colors.red,
            ),
            SizedBox(width: 4),
            Text(index % 2 == 0 ? 'Incoming' : 'Outgoing'),
          ],
        )),
        DataCell(Text('00:36')),
        DataCell(Text('Jan 11, 2023 - 01:49 pm')),
      ]);
    });
  }
}
