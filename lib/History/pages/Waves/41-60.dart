import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class FortyOneToSixty extends StatefulWidget {
  const FortyOneToSixty({Key? key}) : super(key: key);

  @override
  _FortyOneToSixtyState createState() => _FortyOneToSixtyState();
}

class _FortyOneToSixtyState extends State<FortyOneToSixty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext: 'Who is known as Lion of Punjab?',
            backtext: 'Lala Lajpat Rai',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following is not one of the causes responsible for the rise of moneylenders in British India?',
            backtext: 'New Educational System',
          ),
          MyFlipCard(
            fronttext:
                'The tendency for increased litigation, was visible after the introduction of the land settlement system of Lord Corn wallis in 1793. The reason for this is normally traced to which of the following ',
            backtext: 'Making Zamindar’s position stronger vis-a-vis the ryot',
          ),
          MyFlipCard(
            fronttext:
                'There was a sharp class division at Harappa and Mohen-jodaro. This is clear from the',
            backtext: 'dierent types of dwellings exca vated',
          ),
          MyFlipCard(
            fronttext:
                'The most learned medieval Muslim ruler who was well versed in various branches of learning including astron omy, mathematics and medicine was',
            backtext: 'Sikandar Lodi',
          ),
          MyFlipCard(
            fronttext:
                'Which Indus Valley Civilization site would you associate with the bronze statue of ’Dancing Girl’?',
            backtext: 'Mohenjodaro',
          ),
          MyFlipCard(
            fronttext:
                'A prominent Harappan site, being sur rounded by ood barriers in order to protect it with the aid of UNESCO funds, is',
            backtext: 'Mohenjodaro',
          ),
          MyFlipCard(
            fronttext:
                'Which foreign journalist reported about the British brutality perpetrated against peaceful Satyagrahis at Dha rasana Salt Depot during the Civil Dis obedience Movement?',
            backtext: 'WelsMiller',
          ),
          MyFlipCard(
            fronttext: 'Who among the following was a Satavahana ruler?',
            backtext: 'Vasisthiputra Pulumayi',
          ),
          MyFlipCard(
            fronttext:
                'Where did Lord Buddha breathe his last (Mahaparinirvan)?',
            backtext: 'Kushinagar',
          ),
          MyFlipCard(
            fronttext:
                'The only inscribed stone portrait of Em peror Ashoka has been found at',
            backtext: 'Kanaganahalli',
          ),
          MyFlipCard(
            fronttext: 'What was the policy of “doctrine of lapse”?',
            backtext: 'States were not allowed to adopt son as an heir.',
          ),
          MyFlipCard(
            fronttext:
                'The worst famine in India under the British rule occurred during',
            backtext: '1876-1878',
          ),
          MyFlipCard(
            fronttext: 'To which king belongs the Lion capital at Sarnath?',
            backtext: 'Ashoka',
          ),
          MyFlipCard(
            fronttext:
                'Which Sikh Guru laid the foundation of the city Amritsar?',
            backtext: 'Guru Ramdass Ji',
          ),
          MyFlipCard(
            fronttext:
                'Paramountcy is paramount’ was de clared to dene the relations of In dian States with British Government by which Commission?',
            backtext: 'Butler Commission',
          ),
          MyFlipCard(
            fronttext: 'Quit India Movement was launched in response to',
            backtext: 'Cripps Proposals',
          ),
          MyFlipCard(
            fronttext:
                'Gandhiji wanted that the students should spend their vacations in',
            backtext: 'Social service',
          ),
          MyFlipCard(
            fronttext: '“Taj Mahal" is on the Bank of:',
            backtext: 'Jamuna',
          ),
          MyFlipCard(
            fronttext:
                'Which one of the following animals was not represented on the seals and terracotta art of the Harappan culture?',
            backtext: 'Cow',
          ),
        ],
      ),
    );
  }
}
