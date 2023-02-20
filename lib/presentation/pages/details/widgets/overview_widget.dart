import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

class OverviewWidget extends StatelessWidget {
  final String? sentence;
  final String? entry;
  final String? description;
  final String? name;
  final String? role;
  const OverviewWidget(
      {Key? key,
      this.sentence,
      this.entry,
      this.description,
      this.name,
      this.role})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(sentence ?? "Read beetween the lies."),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Overview",
            style: Styles.headLineStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(entry ??
              "Film opowiada o perypetiach oszustów, którzy biorą sobie za cel nowojorskiego bogacza i jego syna."),
          const SizedBox(
            height: 20,
          ),
          Text(description ??
              "Film eksploruje sekrety Nowego Jorku, od tych skrywanych w apartamentowcach Piątej Alei do tych z ciemnych zaułków Queensu. Nic nie jest takie, jakie się wydaje - motywacje są brane pod lupę, a oczekiwania burzone."),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? "Craig Mazin",
                    style: Styles.textStyle,
                  ),
                  Text(role ?? "Creator"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? "Neil Druckmann",
                    style: Styles.textStyle,
                  ),
                  Text(role ?? "Creator"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
