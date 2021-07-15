import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class OneToTen extends StatefulWidget {
  @override
  _OneToTenState createState() => _OneToTenState();
}

class _OneToTenState extends State<OneToTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext: 'Who was the political guru of gandhiji ?',
            backtext: 'Gopal Krishna Gokhale',
          ),
          MyFlipCard(
            fronttext:
                'Panini, the first Grammarian of Sanskrit language in India, lived during which century ?',
            backtext: '5th-6th Century BC',
          ),
          MyFlipCard(
            fronttext:
                'The oldest form of composition of the Hindustani Vocal Music is',
            backtext: 'Khayal',
          ),
          MyFlipCard(
            fronttext:
                'For which movement the slogan ’Do or Die’ was given by Mahatama Gandhi?',
            backtext: 'Quit India movement',
          ),
          MyFlipCard(
            fronttext:
                'Who was the first British to get a farman from the Mughal Euperor Jahangir to establish a factory at Surat in 1613?',
            backtext: 'Captain William Hawkins',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following wrote commentaries on Harshavardhana’s administration and the court life in Kannauj?',
            backtext: 'Hiuen-Tsang',
          ),
          MyFlipCard(
            fronttext:
                'Which state was the first victim of “The Subsidiary Alliance System”?',
            backtext: 'Hyderabad',
          ),
          MyFlipCard(
            fronttext: 'Who built the Taragarh fort of Ajmer?',
            backtext: 'Ajayapal Chauhan',
          ),
          MyFlipCard(
            fronttext: 'Which one of the following is not correctly matched?',
            backtext: 'Firuz Tughlaq : Tughlaqabad',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following woman social reformers was called ‘Pandit’?',
            backtext: 'Ramabai',
          ),
          MyFlipCard(
              fronttext:
                  'Where was the seat of the first Republic of the world in 6th century BC?',
              backtext: 'Vaishali'),
          MyFlipCard(
            fronttext:
                'In which year the rst English translation of Arthashastra was published?',
            backtext: '1909',
          ),
          MyFlipCard(
            fronttext: 'The weekly Commonweal was founded by',
            backtext: 'Mahmud of Ghazni',
          ),
          MyFlipCard(
            fronttext:
                'The resolution of Quit India Movement was passed in which of the following city?',
            backtext: 'Bombay',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following said “patriotism is religion and religion is love for India”?',
            backtext: 'Bankim Chandra Chatterjee',
          ),
          MyFlipCard(
            fronttext:
                'Mrs. Annie Besant became the first woman President of Indian National Congress in the year',
            backtext: '1917',
          ),
          MyFlipCard(
            fronttext: 'Who was the last great ruler of Gupta dynasty?',
            backtext: 'Skandagupta',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following was not a member of the Cabinet Mission?',
            backtext: 'John Simon',
          ),
          MyFlipCard(
            fronttext: 'Who started the Indian Reforms Association?',
            backtext: 'Keshav Chandra Sen',
          ),
        ],
      ),
    );
  }
}
