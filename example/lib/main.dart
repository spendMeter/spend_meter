import 'package:flutter/material.dart';
import 'package:spendmeter_pkg/spendmeter_pkg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 String _deviceId="" ;
 String _token="" ;
 List<String> keylist=[];


  void _getData() {
    setState(() {

      _deviceId= SpendMeterPkg.getDeviceID();
      _token=SpendMeterPkg.getAuthenticationToken();
       keylist.addAll(SpendMeterPkg.getPinningKeys());
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                const Text(
                  ' Device Id:',
                ),
                Text(
                  _deviceId,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  ' Token:',
                ),
                Text(
                  _token,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),

            Row(
              children: [
                const Text(
                  'Key list length:',
                ),
                Text(
                  keylist.length.toString(),
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getData,
        tooltip: 'get data',
        child: const Icon(Icons.mobile_friendly_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
