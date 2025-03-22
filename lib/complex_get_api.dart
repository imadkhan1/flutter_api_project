import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api_project/Models/user_model.dart';
import 'package:http/http.dart' as http;

class ComplexGetApi extends StatefulWidget {
  const ComplexGetApi({super.key});

  @override
  State<ComplexGetApi> createState() => _ComplexGetApiState();
}

class _ComplexGetApiState extends State<ComplexGetApi> {
  List<UserModel> complexGettList = [];
  Future<List<UserModel>> getApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (var i in data) {
        complexGettList.add(UserModel.fromJson(i));
      }
      return complexGettList;
    } else {
      return complexGettList;
    }
  }

  @override
  @override
  void initState() {
    super.initState();
    //getApi();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text('Complex Get Api')),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: getApi(),
            builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: complexGettList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          ReusableRow(
                              "ID", complexGettList[index].id.toString()),
                          ReusableRow(
                              'Name', complexGettList[index].name.toString()),
                          ReusableRow('Username',
                              complexGettList[index].username.toString()),
                          ReusableRow('Email',
                              complexGettList[index].email.toString()),
                          ReusableRow('Phone',
                              complexGettList[index].phone.toString()),
                          ReusableRow('Website',
                              complexGettList[index].website.toString()),
                          ReusableRow(
                              'Company',
                              complexGettList[index]
                                  .company!
                                  .name
                                  .toString()),
                          ReusableRow(
                              'Street',
                              complexGettList[index]
                                  .address!
                                  .street
                                  .toString()),
                          ReusableRow(
                              'Suite',
                              complexGettList[index]
                                  .address!
                                  .suite
                                  .toString()),
                          ReusableRow(
                              'City',
                              complexGettList[index]
                                  .address!
                                  .city
                                  .toString()),
                          ReusableRow(
                              'Zipcode',
                              complexGettList[index]
                                  .address!
                                  .zipcode
                                  .toString()),
                          ReusableRow(
                              'Geo',
                              complexGettList[index]
                                  .address!
                                  .geo!
                                  .lat
                                  .toString()),
                          ReusableRow(
                              'Lat',
                              complexGettList[index]
                                  .address!
                                  .geo!
                                  .lng
                                  .toString()),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          )),
          
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String title, value;
  const ReusableRow(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
