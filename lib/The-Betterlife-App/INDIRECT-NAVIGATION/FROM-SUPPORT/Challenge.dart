import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(-18),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(146, 167, 167, 167)))),
            )),
        leading: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 25,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Report a challenge",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complete this form to help us address your query",
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Complaint Category",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 60,
                                child: ComponentSlideIns(
                                  beginOffset: Offset(4.0, 0.0),
                                  endOffset: Offset(0.0, 0.0),
                                  duration: Duration(milliseconds: 1000),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Complaint Category",
                                        suffixIcon: Icon(
                                          Icons.arrow_drop_down_sharp,
                                          size: 32,
                                          color: Colors.grey.shade600,
                                        ),
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        filled: true,
                                        fillColor: Colors.grey.shade100),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Subject",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 60,
                                child: ComponentSlideIns(
                                  beginOffset: Offset(4.0, 0.0),
                                  endOffset: Offset(0.0, 0.0),
                                  duration: Duration(milliseconds: 1200),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Subject",
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 20,
                                                color: Color.fromARGB(
                                                    255, 255, 0, 0)),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        filled: true,
                                        fillColor: Colors.grey.shade100),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Description",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 120,
                                child: ComponentSlideIns(
                                  beginOffset: Offset(4.0, 0.0),
                                  endOffset: Offset(0.0, 0.0),
                                  duration: Duration(milliseconds: 1400),
                                  child: TextField(
                                    maxLines: null,
                                    expands: true,
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: InputDecoration(
                                        hintText: "Tell us what happened",
                                        contentPadding:
                                            const EdgeInsets.all(10),
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        filled: true,
                                        fillColor: Colors.grey.shade100),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ComponentSlideIns(
                              beginOffset: Offset(-4.0, 0.0),
                              endOffset: Offset(0.0, 0.0),
                              duration: Duration(milliseconds: 1000),
                              child: Container(
                                height: 100,
                                width: 380,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(255, 3, 85, 152),
                                    width: 2,
                                  ),
                                  color: Color.fromARGB(241, 193, 221, 255),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.cloud_upload,
                                      size: 40,
                                      color: Color.fromARGB(255, 3, 85, 152),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Tap to upload transaction image',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 85, 152),
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize: const Size(370, 50),
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
