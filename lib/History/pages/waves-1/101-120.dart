import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class OneHundredOneToOneTwenty extends StatefulWidget {
  const OneHundredOneToOneTwenty({Key? key}) : super(key: key);

  @override
  _OneHundredOneToOneTwentyState createState() =>
      _OneHundredOneToOneTwentyState();
}

class _OneHundredOneToOneTwentyState extends State<OneHundredOneToOneTwenty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext: 'Who was famously known as the Tuti e-Hindustan?',
            backtext: 'Amir Khusarau',
          ),
          MyFlipCard(
            fronttext:
                'Which one of the following scripts of ancient India was written from right to left?',
            backtext: 'Kharoshti',
          ),
          MyFlipCard(
            fronttext: 'Syadvad(the theory of ’may be’) is a doctrine of-',
            backtext: 'Jainism',
          ),
          MyFlipCard(
            fronttext: 'The Earliest Settlement of Aryan tribes were at',
            backtext: 'Sapta Sindhu',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following is known as the ‘Heroine of 1942 Quit India Movement’?',
            backtext: 'Aruna Asaf Ali',
          ),
          MyFlipCard(
            fronttext: 'Who among the following was the last Mauryan Ruler?',
            backtext: 'Brihadaratha',
          ),
          MyFlipCard(
            fronttext: 'Upnishads are books on',
            backtext: 'Philosophy',
          ),
          MyFlipCard(
            fronttext: 'Kanchi was the capital of',
            backtext: 'Pallavas',
          ),
          MyFlipCard(
            fronttext: 'The term Khalisa in Mughal adminis tration signied the',
            backtext: 'land owned by the emperor himself',
          ),
          MyFlipCard(
            fronttext: 'Who discovered the Indus Valley Civ ilization?',
            backtext: 'Dayaram Sahni',
          ),
          MyFlipCard(
            fronttext: 'Who founded the Sri Narayana Dharma Paripalana Yogam?',
            backtext: 'Narayan Guru',
          ),
          MyFlipCard(
            fronttext: 'Rani Gardinulu who fought against the British was from',
            backtext: 'Nagaland',
          ),
          MyFlipCard(
            fronttext: 'Who was the first women ruler of Delhi?',
            backtext: 'Razia Begum',
          ),
          MyFlipCard(
            fronttext:
                'During which Nationalist Movement, the Garhwal soldiers refused to re on the people at Peshwar?',
            backtext: 'Civil Disobedience Movement',
          ),
          MyFlipCard(
            fronttext:
                'The first lawful Hindu widow remar riage among upper castes in our coun try was celebrated under which of the following reformer:',
            backtext: 'Ishwar Chandra Vidyasagar',
          ),
          MyFlipCard(
            fronttext: 'We can know about early vedic period from',
            backtext: 'the Rig Veda',
          ),
          MyFlipCard(
            fronttext: 'Raja Rammohan Roy was not connected with',
            backtext: 'Sanskrit education',
          ),
          MyFlipCard(
            fronttext:
                'Which among the following is the sacred book of the Buddhists?',
            backtext: 'Tripitaka',
          ),
          MyFlipCard(
            fronttext: 'The famous king of Kushana-Dynasty was:',
            backtext: 'Kanishka',
          ),
          MyFlipCard(
            fronttext: 'The Indus valley houses were built of:',
            backtext: 'Bricks',
          ),
        ],
      ),
    );
  }
}
