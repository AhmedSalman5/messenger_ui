import 'package:flutter/material.dart';

class InformationModel {
  String? image;
  String? name;
  String? message;
  String? time;

  InformationModel({
    this.image,
    this.name,
    this.message,
    this.time,
  });
}

class Messenger extends StatelessWidget {
  Messenger({super.key});

  List<InformationModel> messageModel = [
    InformationModel(
      name: 'Adham',
      message: 'Hello 1',
      time: '6:08AM',
    ),
    InformationModel(
      name: 'Ali',
      message: 'Hello 2',
      time: '7:08AM',
    ),
    InformationModel(
      name: 'Mohamed',
      message: 'Hello 3',
      time: '3:08AM',
    ),
    InformationModel(
      name: 'Fathy',
      message: 'Hello 4',
      time: '9:08AM',
    ),
    InformationModel(
      name: 'Nasr',
      message: 'Hello 5',
      time: '10:08AM',
    ),
    InformationModel(
      name: 'youssef',
      message: 'Hello 6',
      time: '4:08AM',
    ),
    InformationModel(
      name: 'Mohamed',
      message: 'Hello 3',
      time: '3:08AM',
    ),
    InformationModel(
      name: 'Adham',
      message: 'Hello 1',
      time: '6:08AM',
    ),
    InformationModel(
      name: 'Ali',
      message: 'Hello 2',
      time: '7:08AM',
    ),
    InformationModel(
      name: 'Mohamed',
      message: 'Hello 3',
      time: '3:08AM',
    ),
    InformationModel(
      name: 'Fathy',
      message: 'Hello 4',
      time: '9:08AM',
    ),
    InformationModel(
      name: 'Nasr',
      message: 'Hello 5',
      time: '10:08AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/gg.jpg'),
          ),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text('Saerch'),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildOnLineChat(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 8,
                  ),
                  itemCount: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildChatItem(
                  infModel: messageModel[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15,
                ),
                itemCount: messageModel.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildOnLineChat() => SizedBox(
      width: 50,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/gg.jpg'),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: const CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Adham Adham Adham Adham Adham Adham',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );

Widget buildChatItem({required InformationModel infModel}) => Row(
      children: [
        const CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage('assets/gg.jpg'),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(infModel.name!),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 180,
                  child: Text(
                    infModel.message!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CircleAvatar(
                    radius: 2,
                  ),
                ),
                Text(infModel.time!),
              ],
            )
          ],
        )
      ],
    );
