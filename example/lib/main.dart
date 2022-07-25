import 'package:flutter/material.dart';

import 'package:wuikit/wuikit.dart';

void main() => runApp(MyApp());

/// this is your APP Main screen configuration
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      appBar: AppBar(
        leading: const Icon(Icons.android_sharp),
        title: const Text('Wuikit'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Simple with colors properly styled"),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SimpleElevatedButton(
                child: const Text("Elevated Button"),
                color: Colors.blue,
                onPressed: () {},
              ),
              SimpleOutlinedButton(
                child: const Text("Outlined Button"),
                onPressed: () {},
                outlineColor: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SimpleElevatedButton(
                child: const Text("Elevated Button"),
                color: Colors.green,
                onPressed: () {},
              ),
              SimpleOutlinedButton(
                child: const Text("Outlined Button"),
                onPressed: () {},
                outlineColor: Colors.green,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SimpleElevatedButton(
                child: const Text("Elevated Button"),
                color: Colors.amber,
                onPressed: () {},
              ),
              SimpleOutlinedButton(
                child: const Text("Outlined Button"),
                onPressed: () {},
                outlineColor: Colors.amber,
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text("Simple with icons & colors"),
          const SizedBox(height: 6),
          Column(
            children: [
              SimpleElevatedButtonWithIcon(
                label: const Text("Done"),
                iconData: Icons.check,
                color: Colors.green,
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SimpleElevatedButtonWithIcon(
                label: const Text("Warning!"),
                iconData: Icons.warning_amber_outlined,
                color: Colors.amber,
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SimpleElevatedButtonWithIcon(
                label: const Text("ERROR"),
                iconData: Icons.error_outline,
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text("Simple circular with icons"),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SimpleCircularIconButton(
                iconData: Icons.remove,
                fillColor: Colors.red,
                iconColor: Colors.white,
                radius: 32,
                onPressed: () {},
              ),
              SimpleCircularIconButton(
                iconData: Icons.add,
                fillColor: Colors.green,
                iconColor: Colors.white,
                radius: 48,
                onPressed: () {},
              ),
              SimpleCircularIconButton(
                iconData: Icons.edit,
                onPressed: () {},
              ),
              SimpleCircularIconButton(
                iconData: Icons.check,
                iconColor: Colors.green,
                outlineColor: Colors.green,
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(height: 32),
          const Text("And with alerts"),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SimpleCircularIconButton(
                iconData: Icons.warning_amber_outlined,
                fillColor: Colors.amber,
                iconColor: Colors.white,
                onPressed: () {},
                radius: 32,
                notificationCount: 2,
              ),
              SimpleCircularIconButton(
                iconData: Icons.new_releases_outlined,
                fillColor: Colors.blue,
                iconColor: Colors.white,
                onPressed: () {},
                notificationCount: 4,
              ),
              SimpleCircularIconButton(
                iconData: Icons.messenger_outline_sharp,
                fillColor: Colors.green,
                iconColor: Colors.white,
                onPressed: () {},
                radius: 64,
                notificationCount: 6,
              ),
              SimpleCircularIconButton(
                iconData: Icons.notifications,
                fillColor: Colors.amber,
                iconColor: Colors.white,
                onPressed: () {},
                radius: 80,
                notificationCount: 8,
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text("Avatars with Photos or Labels"),
          const SizedBox(height: 6),
          Row(
            children: [
              Avatar(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Flag_of_Azerbaijan_%283-2%29.svg/1200px-Flag_of_Azerbaijan_%283-2%29.svg.png",
                onPressed: () {},
              ),
              const SizedBox(width: 36),
              Avatar(
                label: "AZ",
                onPressed: () {},
              ),
              const SizedBox(width: 36),
              Avatar(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqm_NJbHrAHw9IN1v-13iHseOtrFRle4DcBQ&usqp=CAU",
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text("Card"),
          const SizedBox(height: 6),
          Column(
            children: [
              CardUI(
                child: const Text("Card"),
              ),
              const SizedBox(height: 16),
              CardUI(
                child: const Text("Card"),
                borderRadius: BorderRadius.circular(8),
                elevation: 15,
                backgroundColor: Colors.yellow,
                shadowColor: Colors.blue,
                shadowOffset: Offset(0, 8),
                shadowBlur: 8,
                padding: 40,
                height: 200,
                width: MediaQuery.of(context).size.width - 16,
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text("Expandable section"),
          const SizedBox(height: 6),
          CardUI(
            width: MediaQuery.of(context).size.width - 16,
            child: const ExpandableSection(
              title: "Expandable section",
              child: const Text("Expandable section"),
            ),
          ),
        ],
      ),
    ));
  }
}
