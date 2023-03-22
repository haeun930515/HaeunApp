import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/pray_controller.dart';

class BibleAlertWidget extends GetView<PrayController> {
  BibleAlertWidget({super.key});

  final titles = [
    "창세기",
    "출애굽기",
    "레위기",
    "민수기",
    "신명기",
    "여호수아",
    "사사기",
    "룻기",
    "사무엘상",
    "사무엘하",
    "열왕기상",
    "열왕기하",
    "역대상",
    "역대하",
    "에스라",
    "느헤미야",
    "에스더",
    "욥기",
    "시편",
    "잠언",
    "전도서",
    "아가",
    "이사야",
    "예레미야",
    "예레미야애가",
    "에스겔",
    "다니엘",
    "호세아",
    "요엘",
    "아모스",
    "오바댜",
    "요나",
    "미가",
    "나훔",
    "하박국",
    "스바냐",
    "학개",
    "스가랴",
    "말라기",
    "마태복음",
    "마가복음",
    "누가복음",
    "요한복음",
    "사도행전",
    "로마서",
    "고린도전서",
    "고린도후서",
    "갈라디아서",
    "에베소서",
    "빌립보서",
    "골로새서",
    "데살로니가전서",
    "데살로니가후서",
    "디모데전서",
    "디모데후서",
    "디도서",
    "빌레몬서",
    "히브리서",
    "야고보서",
    "베드로전서",
    "베드로후서",
    "요한일서",
    "요한이서",
    "요한삼서",
    "유다서",
    "요한계시록"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: DropdownButton(
                          value: controller.selectedTitle.value,
                          items: titles.map(
                            (value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                          onChanged: (value) {
                            controller.changeTitle(value!);
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Card(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: controller.chapter,
                                scrollPadding: const EdgeInsets.only(bottom: 0),
                              ),
                            ),
                          ),
                          const Text(
                            "장",
                            style: TextStyle(
                                fontFamily: 'PS',
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            child: Card(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: controller.verse,
                              ),
                            ),
                          ),
                          const Text(
                            "절",
                            style: TextStyle(
                                fontFamily: 'PS',
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            controller.fetchBible(
                                controller.chapter.text.trim(),
                                controller.verse.text.trim());
                          },
                          child: const Text("확인")),
                      Text(
                        controller.bibleContent.value,
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  ))),
        ),
        Obx(
          () => Offstage(
            offstage: !controller.isLoading.value,
            child: Stack(children: const <Widget>[
              Opacity(
                opacity: 0.5,
                child: ModalBarrier(dismissible: false, color: Colors.black),
              ),
              Center(
                child: CircularProgressIndicator(),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
