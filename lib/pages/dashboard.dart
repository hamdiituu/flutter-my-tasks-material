import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:badges/badges.dart';
import 'package:timelines/timelines.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Dashboard'), centerTitle: false, actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
            icon: Badge(child: const Icon(Icons.notifications))),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(Icons.settings)),
      ]),
      // floatingActionButton: SpeedDial(icon: Icons.border_color, children: [
      //   SpeedDialChild(
      //     child: const Icon(Icons.task),
      //     label: 'New Task',
      //     onTap: () {
      //       Navigator.pushNamed(context, '/new_task');
      //     },
      //   ),
      //   // SpeedDialChild(
      //   //   child: const Icon(Icons.local_offer),
      //   //   label: 'New Tag',
      //   //   onTap: () {
      //   //     Navigator.pushNamed(context, '/new_tag');
      //   //   },
      //   // ),
      // ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/new_task');
        },
        child: const Icon(Icons.border_color),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              onTap: () {},
              leading: Badge(child: const Icon(Icons.today)),
              title: const Text(
                'Planing',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              trailing: const Icon(
                Icons.arrow_right,
                size: 40,
              ),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.done),
              title: Text(
                'Done',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 40,
              ),
            ),
            const Divider(),
            ListTile(
              leading: Badge(child: const Icon(Icons.fmd_bad)),
              title: const Text(
                'Lasted',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              trailing: const Icon(
                Icons.arrow_right,
                size: 40,
              ),
            ),
            const Divider(),
            // const SizedBox(
            //   height: 20,
            // ),
            // ExpansionPanelList(
            //   expansionCallback: (int index, bool isExpanded) {},
            //   children: [
            //     ExpansionPanel(
            //       headerBuilder: (BuildContext context, bool isExpanded) {
            //         return const ListTile(
            //           title: Text('Sport'),
            //           leading: Icon(Icons.downhill_skiing),
            //         );
            //       },
            //       body: SizedBox(
            //         height: 200,
            //         width: double.infinity,
            //         // child: _Timeline1()
            //       ),
            //       isExpanded: false,
            //     ),
            //     ExpansionPanel(
            //       headerBuilder: (BuildContext context, bool isExpanded) {
            //         return const ListTile(
            //           title: Text('School'),
            //           leading: Icon(Icons.school),
            //         );
            //       },
            //       body: const ListTile(
            //         title: Text('Item 2 child'),
            //         subtitle: Text('Details goes here'),
            //       ),
            //       isExpanded: false,
            //     ),
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}

class _Timeline1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = [1, 2, 3, 4];
    return Flexible(
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          connectorTheme: ConnectorThemeData(
            thickness: 3.0,
            color: Color(0xffd3d3d3),
          ),
          indicatorTheme: IndicatorThemeData(
            size: 15.0,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0),
        builder: TimelineTileBuilder.connected(
          contentsBuilder: (_, __) => Text('Status Field'),
          connectorBuilder: (_, index, __) {
            if (index == 0) {
              return SolidLineConnector(color: Color(0xff6ad192));
            } else {
              return SolidLineConnector();
            }
          },
          indicatorBuilder: (_, index) {
            switch (data[index]) {
              case 1:
                return DotIndicator(
                  color: Color(0xff6ad192),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 10.0,
                  ),
                );
              case 2:
                return DotIndicator(
                  color: Color(0xff193fcc),
                  child: Icon(
                    Icons.sync,
                    size: 10.0,
                    color: Colors.white,
                  ),
                );
              case 3:
                return OutlinedDotIndicator(
                  color: Color(0xffa7842a),
                  borderWidth: 2.0,
                  backgroundColor: Color(0xffebcb62),
                );
              case 4:
              default:
                return OutlinedDotIndicator(
                  color: Color(0xffbabdc0),
                  backgroundColor: Color(0xffe6e7e9),
                );
            }
          },
          itemExtentBuilder: (_, __) => 50.0,
          itemCount: data.length,
        ),
      ),
    );
  }
}
