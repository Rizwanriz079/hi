import 'package:flutter/material.dart';
import 'constant.dart';
//
// class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
//   @override
//   Size get preferredSize => Size.fromHeight(130.0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: secondaryColor,
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Card(
//               color: secondaryColor,
//               elevation: 4,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Row(
//                   children: [
//                     Icon(Icons.call, color: Colors.green),
//                     SizedBox(width: 8),
//                     Expanded(
//                       child: RichText(
//                         text: TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'Call History ',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 color: primaryColor,
//                               ),
//                             ),
//                             TextSpan(
//                               text: '(7951 Users)',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: hintColor,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                     Expanded(
//                       flex: 1,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Search by name or phone number',
//                           prefixIcon: Icon(Icons.search),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                             borderSide: BorderSide.none,
//                           ),
//                           filled: true,
//                           fillColor: Colors.grey[100],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     ElevatedButton.icon(
//                       icon: Icon(Icons.arrow_upward, size: 20, color: primaryColor),
//                       label: Text('Export', style: buttonTextStyle),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: secondaryColor,
//                         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           side: BorderSide(color: hintColor),
//                         ),
//                       ),
//                       onPressed: () {},
//                     ),
//                     SizedBox(width: 8),
//                     ElevatedButton.icon(
//                       icon: Icon(Icons.filter_list, size: 20, color: primaryColor),
//                       label: Text('Filter', style: buttonTextStyle),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: secondaryColor,
//                         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           side: BorderSide(color: hintColor),
//                         ),
//                       ),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppbar({required this.scaffoldKey, super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 222, 247),
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
        InkWell(
        onTap: () {},
    child: Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: const Color.fromARGB(255, 151, 64, 251),
    borderRadius: BorderRadius.circular(10),
    ),
    child: const Icon(
    Icons.search,
    color: Colors.white,
    ),
    ),
    ),
    const SizedBox(width: 20),
    InkWell(
    onTap: () {},
    child: Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: const Color.fromARGB(255, 151, 64, 251),
    borderRadius: BorderRadius.circular(10),
    ),
    child: const Icon(
    Icons.add,
    color: Colors.white,
    ),
    ),
    ),
    const SizedBox(width: 20),
    InkWell(
    onTap: () {
    scaffoldKey.currentState?.openEndDrawer();
    },
    child: Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: const Color.fromARGB(255, 151, 64, 251),
    borderRadius: BorderRadius.circular(10),
    ),
    child: const Icon(
    Icons.shopping_cart,
    color: Colors.white,
    ),
    ),
    ),
    const SizedBox(width: 20),
    ],
    );
    }
}