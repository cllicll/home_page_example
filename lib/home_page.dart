import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F8FB),
        body: Padding(
          padding: context.paddingNormal,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topIcons(),
                context.emptySizedHeightBoxLow3x,
                buildHeader(),
                context.emptySizedHeightBoxLow3x,
                buildSearch(context),
                context.emptySizedHeightBoxLow3x,
                const Text(
                  "For You",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                context.emptySizedHeightBoxLow3x,
                buildHorizontalList(context),
                context.emptySizedHeightBoxLow3x,
                buildMiddleHeader(),
                context.emptySizedHeightBoxLow3x,
                buildVerticalList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildHorizontalList(BuildContext context) {
    return SizedBox(
      height: context.height * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: context.horizontalPaddingLow,
            child: Container(
              height: context.height * 0.24,
              width: context.width * 0.40,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/manzara.jpeg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: context.paddingLow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.14),
                    ),
                    const Text(
                      "Seminyak, Bali",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: Colors.blue,
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  ListView buildVerticalList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.paddingLow,
          child: Row(children: [
            Container(
              height: context.dynamicHeight(0.07),
              width: context.dynamicWidth(0.15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/manzara.jpeg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: context.dynamicWidth(0.07)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Seminyak, Bali",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                context.emptySizedHeightBoxLow,
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: context.width * 0.02,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ]),
        );
      },
    );
  }

  Row buildMiddleHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Top Destination",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          "See all",
          style: TextStyle(color: Colors.blue.shade400, fontSize: 12),
        )
      ],
    );
  }

  Row buildSearch(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: context.dynamicHeight(0.055),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: context.dynamicWidth(0.04),
        ),
        Container(
          width: context.dynamicWidth(0.12),
          height: context.dynamicHeight(0.06),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Image.asset(
              'assets/filter.png',
              width: 24,
              height: 24,
            ),
          ),
        )
      ],
    );
  }

  Column buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Discover",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text("Explore the beautiful world")
      ],
    );
  }

  Row topIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.menu_outlined,
          color: Colors.grey,
        ),
        Icon(
          Icons.notifications,
          color: Colors.grey,
        )
      ],
    );
  }
}
