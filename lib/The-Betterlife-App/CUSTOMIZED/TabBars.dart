import 'package:flutter/material.dart';

class TabBarsViews extends StatefulWidget {
  final String title;
  final List<String> tabTitles;
  final List<Widget> tabViews;
  final ValueChanged<int> onTabChanged;
  final String? dynamicTitle;

  const TabBarsViews({
    super.key,
    required this.title,
    this.dynamicTitle,
    required this.tabTitles,
    required this.tabViews,
    required this.onTabChanged,
  });

  @override
  _TabBarsViewsState createState() => _TabBarsViewsState();
}

class _TabBarsViewsState extends State<TabBarsViews>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.tabTitles.length,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.addListener(() {
      widget.onTabChanged(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    String completeTabTitle = widget.dynamicTitle != null
        ? "${widget.dynamicTitle} ${widget.tabTitles[_tabController.index]}"
        : widget.tabTitles[_tabController.index];

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 25,
                color: Color.fromARGB(255, 3, 85, 152),
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
            preferredSize: const Size.fromHeight(0),
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
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            color: const Color.fromARGB(228, 211, 231, 255),
            child: TabBar(
              unselectedLabelColor: Colors.grey,
              controller: _tabController,
              tabs: widget.tabTitles
                  .map(
                    (title) => TextButton(
                      onPressed: () {
                        _tabController.index = widget.tabTitles.indexOf(title);
                      },
                      child: Text(title),
                    ),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: widget.tabViews,
            ),
          ),
        ]));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
