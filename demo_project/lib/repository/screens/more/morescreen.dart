import 'package:demo_project/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class Morescreen extends StatelessWidget {
  var arrMore=[
    {
      "icon":Icons.person,
      "txt":"Account"
    },
    {
      "icon":CupertinoIcons.chat_bubble_fill,
      "txt":"Chats"
    },
    {
      "icon":Icons.sunny,
      "txt":"Appearance"
    },
    {
      "icon":Icons.notifications_active,
      "txt":"Notifications"
    },
    {
      "icon":Icons.privacy_tip,
      "txt":"Privacy"
    },
    {
      "icon":Icons.folder,
      "txt":"Data Usage"
    },
    {
      "icon":Icons.mail,
      "txt":"Invite Your Friends"
    },
    {
      "icon":Icons.notifications_active,
      "txt":"Notifications"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "More",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            title: UiHelper.CustomText(text: "Almayra Zamzamy", fontsize: 14, context: context,fontfamily: "bold",fontweight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: "+62 1309 - 1710 - 1920", fontsize: 12, context: context) ,
            trailing: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.forward)),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: Icon(arrMore[index]["icon"] as IconData,color: Theme.of(context).brightness==Brightness.dark?AppColors.icondarkmode:AppColors.iconlightmode,),
                title: UiHelper.CustomText(text: arrMore[index]["txt"].toString(), fontsize: 14, context: context),
                trailing: Icon(CupertinoIcons.forward),
              );
            },
              itemCount: arrMore.length,
            ),
          )
        ],
      ),
    );
  }
}
