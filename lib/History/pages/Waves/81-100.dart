import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class EightyOneToHundred extends StatefulWidget {
  const EightyOneToHundred({Key? key}) : super(key: key);

  @override
  _EightyOneToHundredState createState() => _EightyOneToHundredState();
}

class _EightyOneToHundredState extends State<EightyOneToHundred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext: '‘Indian War of Independence 1857’ was written by',
            backtext: 'V. D. Savarkar',
          ),
          MyFlipCard(
            fronttext: '‘Caste System’ in India',
            backtext: 'Became rigid during later Vedic age',
          ),
          MyFlipCard(
            fronttext: 'The Kol Uprising of 1831 started in',
            backtext: 'Chota Nagpur',
          ),
          MyFlipCard(
            fronttext:
                'Bhagat Singh, Sukhdev and Rajguru were tried for the murder of British Police Officer _____.',
            backtext: 'J.P. Saunders',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following Gupta emper ors is represented his coins as playing the lute or Veena?',
            backtext: 'Samudragupta',
          ),
          MyFlipCard(
            fronttext:
                'English Traveller William Hawkins vis ited India during the time of which Mughal emperor?',
            backtext: 'Jahangir',
          ),
          MyFlipCard(
            fronttext:
                'Whom Gandhiji selected as the rst satyagrahi to launch the individual satyagraha in October 1940?',
            backtext: 'Dr. Rajendra Prasad',
          ),
          MyFlipCard(
            fronttext:
                'Who amongst the following is known as the ’Light of Asia’?',
            backtext: 'Lord Buddha',
          ),
          MyFlipCard(
            fronttext: 'The treaty of Mangalore was signed be tween',
            backtext: 'the English East India Company and Tipu Sultan',
          ),
          MyFlipCard(
            fronttext:
                'English East India Company lost the monopoly of Chinese trade by',
            backtext: 'The Charter Act of 1833',
          ),
          MyFlipCard(
            fronttext:
                'Surdas was a disciple of which among the following saints?',
            backtext: 'Vallabhacharya',
          ),
          MyFlipCard(
            fronttext:
                'Identify the dynasty, the rulers of which called them Brahma- Kshatriya',
            backtext: 'Sen',
          ),
          MyFlipCard(
            fronttext:
                'The government of India has decided to declare which of the following rivers as ’National River’?',
            backtext: 'Ganga',
          ),
          MyFlipCard(
            fronttext:
                'Flake tools of Levallois technique is the characteristic feature of which area of the following geological ages?',
            backtext: 'Middle Pleistocene',
          ),
          MyFlipCard(
            fronttext: 'Baburnama was composed in which language?',
            backtext: 'Trukish',
          ),
          MyFlipCard(
            fronttext: 'Panipat is modern:',
            backtext: 'Kurukshetra',
          ),
          MyFlipCard(
            fronttext:
                'Ibn Batuta, the famous Arab scholar, visited India during the reign of',
            backtext: 'Muhammad-bin-Tughlaq',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following Sikh Guru com piled the Adi Granth?',
            backtext: 'Guru Arjan Dev',
          ),
          MyFlipCard(
            fronttext:
                'Who was the Viceroy when the Jallian wala Bagh Massacre took place?',
            backtext: 'Chelmsford',
          ),
          MyFlipCard(
            fronttext:
                'The treaty of Srirangapatna was signed between Tipu Sultan and',
            backtext: 'Cornwallis',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Created By D-ENCODER',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              pause: const Duration(milliseconds: 2000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              repeatForever: true,
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
