import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class OneSixtyOneToOneEighty extends StatefulWidget {
  const OneSixtyOneToOneEighty({Key? key}) : super(key: key);

  @override
  _OneSixtyOneToOneEightyState createState() => _OneSixtyOneToOneEightyState();
}

class _OneSixtyOneToOneEightyState extends State<OneSixtyOneToOneEighty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext:
                'Where has the world’s largest mono lithic statue of Buddha been installed?',
            backtext: 'Bamiyan',
          ),
          MyFlipCard(
            fronttext: 'Ajivika sect was founded by',
            backtext: 'Makkhli Gosala',
          ),
          MyFlipCard(
            fronttext: 'Cotton for textile was rst cultivated in',
            backtext: 'India',
          ),
          MyFlipCard(
            fronttext:
                'Who was the rst Sultan of Delhi to issue regular currency and to declare Delhi as the capital of his empire?',
            backtext: 'IIitutmish',
          ),
          MyFlipCard(
            fronttext:
                'Who led the Maratha forces in the Third Battle of Panipat?',
            backtext: 'Sadashiv Rao Bhau',
          ),
          MyFlipCard(
            fronttext: 'The real name of Sabarmati Ashram',
            backtext: 'Satyagraha Ashram',
          ),
          MyFlipCard(
            fronttext: 'What is the number of main Puranas?',
            backtext: '18',
          ),
          MyFlipCard(
            fronttext: 'India-Napolean was:',
            backtext: 'Samudra Gupta',
          ),
          MyFlipCard(
            fronttext:
                'Mrs. Annie Besant leader of the Theo sophical Society of India was',
            backtext: 'An Irish Lady',
          ),
          MyFlipCard(
            fronttext: 'A copper chariot of Harappa times was discovered at',
            backtext: 'Damiabad',
          ),
          MyFlipCard(
            fronttext:
                'Who repaired the Grand Trunk Road from Calcutta to Delhi?',
            backtext: 'Lord Auckland',
          ),
          MyFlipCard(
            fronttext:
                'Which one among the following state ments is not true about Bahadur Shah Zafar II?',
            backtext: 'He was killed by Lt. Hodson, a cav alry ocer in Delhi',
          ),
          MyFlipCard(
            fronttext:
                'In respect of the reign of Sikandar Lodi which one of the following obser vations is correct?',
            backtext:
                'He was killed by Lt. Hodson, a cav alry ocer in Delhi\n\nand\n\nSikandar made Agrahis second capital.',
          ),
          MyFlipCard(
            fronttext: 'The earliest extant Buddhist Stupa comes from',
            backtext: 'Sandhi',
          ),
          MyFlipCard(
            fronttext:
                'When Subhash Chandra Bose re signed as the President of INC, who was appointed in his place?',
            backtext: 'Rajendra Prasad',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following Indian cracks the British Indian Civil Services Examination in thr rst time of Indian Histroy?',
            backtext: 'Satyendranath Tagore',
          ),
          MyFlipCard(
            fronttext:
                'Who introduced ’Chehra’ and ’Daag’ as a major Military reform?',
            backtext: 'Alauddin Khilji',
          ),
          MyFlipCard(
            fronttext: 'Who founded the Indian National Congress?',
            backtext: 'O. Hume',
          ),
          MyFlipCard(
            fronttext:
                'The earliest Lingodbhavamurti of Siva has been found at which one of the be low mentioned sites?',
            backtext: 'Gudimallam',
          ),
          MyFlipCard(
            fronttext: 'Which Mughal emperor took the title of Alamgir?',
            backtext: 'Aurangzeb',
          ),
        ],
      ),
    );
  }
}
