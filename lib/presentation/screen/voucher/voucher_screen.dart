
import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({Key? key}) : super(key: key);
  static const String routeName= '/voucher';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> VoucherScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("voucher"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context,'/');
          },
          child:const  Text('Home Screen'),
        ),
      ),
    );
  }
}
