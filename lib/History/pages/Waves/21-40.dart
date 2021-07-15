import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class TwentyOneToForty extends StatefulWidget {
  const TwentyOneToForty({Key? key}) : super(key: key);

  @override
  _TwentyOneToFortyState createState() => _TwentyOneToFortyState();
}

class _TwentyOneToFortyState extends State<TwentyOneToForty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext:
                'Which one of the following was the most immediate problem India con fronted after independence?',
            backtext: 'Communal and refugee problem',
          ),
          MyFlipCard(
            fronttext: 'The censorship of the Press Act was passed in',
            backtext: '1799',
          ),
          MyFlipCard(
            fronttext:
                'Where did Mahatma Gautam Buddha delivered his rst sermon?',
            backtext: 'Sarnath',
          ),
          MyFlipCard(
            fronttext:
                'Sarga, Pratisavge, Vansa, Manvantara and Vanshanucharit are the indicators of',
            backtext: 'Puranas',
          ),
          MyFlipCard(
            fronttext:
                'When was the ’Quit India Movement’ Launched by Mohandas Karamchand Gandhi?',
            backtext: '1942',
          ),
          MyFlipCard(
            fronttext:
                'Which among the following was the great centre of trade and commerce in India in the Gupta period?',
            backtext: 'Tamralipti',
          ),
          MyFlipCard(
            fronttext:
                'The Indian National Congress became a real mass based political party after the',
            backtext: 'NagpurSession of the Congress in 1920.',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following was a recom mendation of Hunter’s Commission?',
            backtext: 'Women’s education',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following was known as the "Saint of the Gutters"?',
            backtext: 'Mother Teresa',
          ),
          MyFlipCard(
            fronttext:
                'Krishnadevaraya of the Vijaya nagar empire was a contemporary of',
            backtext: 'Babur',
          ),
          MyFlipCard(
            fronttext:
                'Where Congress passed Quit India Movement Resolution 1942:',
            backtext: 'Verdha',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following, after marriage, became known as Nur Jahan, wife of Emperor Jahangir?',
            backtext: 'Anjuman banu Begam',
          ),
          MyFlipCard(
            fronttext:
                'Which of the doctrines of Jainism was added by Mahavira?',
            backtext: 'Observe continence.',
          ),
          MyFlipCard(
            fronttext: 'The hymns of ’Rigveda’ are the work of',
            backtext: 'many author',
          ),
          MyFlipCard(
            fronttext:
                'The famous dialogue between Nachiketa and Yama is mentioned in the',
            backtext: 'Kathopanishad',
          ),
          MyFlipCard(
            fronttext:
                'Who brought 02 Ashokan Pillars from Topra(Ambala) and Meerut to Delhi?',
            backtext: 'Firoz Shah Tughlaq',
          ),
          MyFlipCard(
            fronttext:
                'The Lakhu cave having ancient rock paintings is located in',
            backtext: 'Almora district',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following places is consid ered a Jain Siddha Kshetra on account of its association with Parsvantha?',
            backtext: 'Sammed Sikahar',
          ),
          MyFlipCard(
            fronttext: 'Who wrote Panchatantra?',
            backtext: 'Vishnu Sharma',
          ),
          MyFlipCard(
            fronttext: 'The main focus of the Rigvedic culture was',
            backtext: 'Indus Valley',
          ),
        ],
      ),
    );
  }
}
