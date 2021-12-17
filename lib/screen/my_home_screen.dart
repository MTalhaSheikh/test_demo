import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_demo/data/constants.dart';
import 'package:test_demo/models/api_data_model.dart';
import 'package:test_demo/services/api_manager.dart';
import 'package:test_demo/widgets/bottom_info_row_widget.dart';
import 'package:test_demo/widgets/check_button_widget.dart';
import 'package:test_demo/widgets/img_widget.dart';
import 'package:test_demo/widgets/primary_button_widget.dart';
import 'package:test_demo/widgets/ratting_bar_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<ApiDataResponse> futureData;

  @override
  void initState() {
    super.initState();
    futureData = ApiManager().getApiData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Demo"),
      ),
      body: FutureBuilder<ApiDataResponse>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.data.length,
              itemBuilder: (context, index) {
                var profileData = snapshot.data!.data[index];
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 5,
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImgWidget(profileData.userDetail.profileImage),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 12.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(right: 18.0),
                                      child: Text(
                                        profileData.businessName.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const CheckButtonWidget(),
                                  ],
                                ),
                              ),
                              const RattingBarWidget(),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "0 Feedback reviews",
                                      overflow: TextOverflow.ellipsis,
                                      style: Constants.boldTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "No jobs performed",
                                      overflow: TextOverflow.ellipsis,
                                      style: Constants.boldTextStyle,
                                    ),
                                    const PrimaryButtonWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withAlpha(100),
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BottomInfoRowWidget('Location ', profileData.userDetail.city),
                              BottomInfoRowWidget('Member since ', profileData.formattedCreatedAt
                                  .toString()),
                              Padding(
                                padding: const EdgeInsets.only(left: 38.0),
                                child: Text(
                                  profileData.businessDetails,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
