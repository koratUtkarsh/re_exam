import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/Screen/ApiCall_Screeen/Model/home_model.dart';
import 'package:re_exam/Screen/ApiCall_Screeen/Provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderf,homeProvidert;
  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context,listen: false);
    homeProvidert = Provider.of<HomeProvider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ralway Api"),
        ),
        body: Column(
          children: [
            FutureBuilder(
              future: homeProviderf!.pData(),
              builder: (context, snapshot) {
                if(snapshot.hasError)
                  {
                    return Text(("${snapshot.error}"),);
                  }
                else if(snapshot.hasData)
                  {
                    List<HomeModel>? h1 = snapshot.data;
                    ListView.builder(itemCount: h1!.length,itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("${h1[index].name}"),
                      );
                    },);

                  }
                return CircularProgressIndicator();

            },)
          ],
        ),
      ),
    );
  }
}
