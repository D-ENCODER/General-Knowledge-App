import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class SixtyOneToEighty extends StatefulWidget {
  const SixtyOneToEighty({Key? key}) : super(key: key);

  @override
  _SixtyOneToEightyState createState() => _SixtyOneToEightyState();
}

class _SixtyOneToEightyState extends State<SixtyOneToEighty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext: 'The Mughal Emperor, who built the Peacock Throne?',
            backtext: 'Shah Jahan',
          ),
          MyFlipCard(
            fronttext:
                'Ain-i-Akbari and Akbarnama were written by Abul Fazl in',
            backtext: 'Persian',
          ),
          MyFlipCard(
            fronttext: 'The last Governor General of India was',
            backtext: 'D.C. Rajagopalachari',
          ),
          MyFlipCard(
            fronttext: 'Ustad Mansur was a famous painter in the region of',
            backtext: 'Jahangir',
          ),
          MyFlipCard(
            fronttext: 'The Indus Valley Specialised in',
            backtext: 'town planning',
          ),
          MyFlipCard(
            fronttext: 'Study of inscription is called:',
            backtext: 'Epigraphy',
          ),
          MyFlipCard(
            fronttext:
                'The archaeological nds from Alamgir pur in Ghaziabad district reected the',
            backtext: 'Harappa Culture',
          ),
          MyFlipCard(
            fronttext:
                'The Lumbini was the birth place of Bud dha is attested by an inscription of:',
            backtext: 'Ashoka',
          ),
          MyFlipCard(
            fronttext:
                'What was the purpose with which Sir William Wedderburn and W S. Caine had set up the Indian Parliamentary Committee in 1893?',
            backtext:
                'To agitate for Indian political re forms in the House of Commons',
          ),
          MyFlipCard(
            fronttext:
                'Which emperor conquered and an nexed the northern part of Sri Lanka and named it Mummadi Cholaman dalam?',
            backtext: 'Parantaka I',
          ),
          MyFlipCard(
            fronttext:
                'The capital of the kingdom of Maharaja Ranjeet Singh was:',
            backtext: 'Lahore',
          ),
          MyFlipCard(
            fronttext: 'Which was the rst capital of Maga dha?',
            backtext: 'Girivarja (Rajgriha)',
          ),
          MyFlipCard(
            fronttext: 'Quwwat-ul-Islam mosque was built by which ruler?',
            backtext: 'Qutubuddin Aibak',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following Government of India Act gave separate representation to the Muslims?',
            backtext: 'Act of 1909',
          ),
          MyFlipCard(
            fronttext:
                'In which session, did the congress split up into two wings ’the Moderates’ and ’the Extremists’?',
            backtext: 'Surat',
          ),
          MyFlipCard(
            fronttext:
                'Which one of the following is considered the Magna Carta of the Indian people?',
            backtext: 'Queen Victoria’s Proclamation',
          ),
          MyFlipCard(
            fronttext:
                'The Act Prohibiting Child Marriages was passed in 1891 due to the eorts of',
            backtext: 'Keshab Chandra Sen and Behramji Malabari.',
          ),
          MyFlipCard(
            fronttext:
                '“The Indian Rebellion of 1857 was not one movement . it was many” - The above statement has been made by',
            backtext: 'A.Bayly',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following was not true of James Augustus Hickey?',
            backtext: 'He was the founder of the Bengal Chronicle.',
          ),
          MyFlipCard(
            fronttext: 'The UNO came into existence in',
            backtext: '1945',
          ),
        ],
      ),
    );
  }
}
