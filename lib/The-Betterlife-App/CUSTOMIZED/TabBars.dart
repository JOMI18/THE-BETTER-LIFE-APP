import 'package:flutter/material.dart';

class TabBarsViews extends StatefulWidget {
  final String title;
  final List<String> tabTitles;
  final List<Widget> tabViews;
  final ValueChanged<int> onTabChanged; // Callback function
  final String? dynamicTitle;

  const TabBarsViews({
    super.key,
    required this.title,
    this.dynamicTitle, // Make dynamicTitle optional

    required this.tabTitles,
    required this.tabViews,
    required this.onTabChanged, // Accept the callback function
  });

  @override
  _TabBarsViewsState createState() => _TabBarsViewsState();
}

class _TabBarsViewsState extends State<TabBarsViews>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: widget.tabTitles.length,
      vsync: this,
      initialIndex: 0, // Initially select the first tab
    );
    tabController.addListener(() {
      widget.onTabChanged(tabController.index); // Notify the callback
    });
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    String completeTabTitle = widget.dynamicTitle != null
        ? "${widget.dynamicTitle} ${widget.tabTitles[tabController.index]}"
        : widget.tabTitles[tabController.index];

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 25,
                color: colorScheme.primary,
              ),
            ),
            Text(completeTabTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            CircleAvatar(
              radius: 13,
              backgroundColor:
                  Color.fromARGB(255, 106, 106, 106).withOpacity(0.5),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "support");
                },
                child: const Icon(
                  Icons.question_mark_outlined,
                  size: 18,
                  color: Color.fromARGB(255, 24, 24, 24),
                ),
              ),
            ),
          ]),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromARGB(146, 167, 167, 167),
                  ),
                ),
              ),
            ),
          ),

          // bottom: TabBar(
          //   controller: tabController,
          //   tabs: widget.tabTitles.map((title) => Tab(text: title)).toList(),
          // ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          // Display buttons as tabs
          Container(
            color: colorScheme.secondary,
            child: TabBar(
              padding: EdgeInsets.all(10),
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              tabs: widget.tabTitles
                  .map(
                    (title) => TextButton(
                      onPressed: () {
                        // Update the selected tab
                        tabController.index = widget.tabTitles.indexOf(title);
                      },
                      child: Text(title),
                    ),
                  )
                  .toList(),
            ),
          ),
          // Display tab views
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: widget.tabViews,
            ),
          ),
        ]));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
