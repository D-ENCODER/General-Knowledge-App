import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class OneTwentyOneToOneForty extends StatefulWidget {
  const OneTwentyOneToOneForty({Key? key}) : super(key: key);

  @override
  _OneTwentyOneToOneFortyState createState() => _OneTwentyOneToOneFortyState();
}

class _OneTwentyOneToOneFortyState extends State<OneTwentyOneToOneForty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext:
                'First factory legislation was passed to improve the working conditions of the labour in',
            backtext: '1881',
          ),
          MyFlipCard(
            fronttext:
                'Tulsidas, the author of Ramcharit manas, was a contemporary of which of the following rulers?',
            backtext: 'Akbar',
          ),
          MyFlipCard(
            fronttext: 'Which war is associated with Florence Nightingale?',
            backtext: 'Crimean War',
          ),
          MyFlipCard(
            fronttext: 'Sikhism was founded in',
            backtext: '1500 AD',
          ),
          MyFlipCard(
            fronttext:
                'Which of the following is not included in 3 Ps which constituted the methods of Indian National Congress?',
            backtext: 'Passion',
          ),
          MyFlipCard(
            fronttext: 'Jain works were compiled in',
            backtext: 'Ballabhi',
          ),
          MyFlipCard(
            fronttext:
                'The Moplahs were the poor peasants and agricultural labourers of South Mal abar. They were mainly converts to Is lam from the lower castes like',
            backtext: 'Tiyya, Cheruma',
          ),
          MyFlipCard(
            fronttext:
                'Which one of the following dynasties was ruling over North India at the time of Alexander’s invasion?',
            backtext: 'Nanda',
          ),
          MyFlipCard(
            fronttext:
                'Under Akbar, the Mir Bakshi was re quired to look after',
            backtext: 'military aairs',
          ),
          MyFlipCard(
            fronttext: 'The victories of Karikala are well por trayed in',
            backtext: 'Pattinappalai',
          ),
          MyFlipCard(
            fronttext:
                'Which, one of the following, is not the anthology of Sangam literature?',
            backtext: 'Tirrukkurala',
          ),
          MyFlipCard(
            fronttext: 'The religion of early Vedic Aryans was primarily of',
            backtext: 'worship of nature and Yajnas',
          ),
          MyFlipCard(
            fronttext:
                'Who among the following has called Tilak as ‘Father of Indian Unrest?',
            backtext: 'Valentine Chirol',
          ),
          MyFlipCard(
            fronttext:
                'Who of the following presided the his toric Lahore session of 1929 in which demand of Poorna Swaraj was raised on the bank of river Ravi?',
            backtext: 'Jawaharlal Nehru',
          ),
          MyFlipCard(
            fronttext: 'According to Jain Shastra, Manno Sahssisso Bhimo,',
            backtext: 'Durtthasso Paridhawad',
          ),
          MyFlipCard(
            fronttext: 'Who wrote Si- Yu- ki?',
            backtext: 'Hieun Tsiang',
          ),
          MyFlipCard(
            fronttext:
                'During which period did the Colonial conict start in Uttarakhand?',
            backtext: 'Mughal period',
          ),
          MyFlipCard(
            fronttext:
                'What name was given to Rishabh nath Tirthankar due to his father Nabhiraya?',
            backtext: 'Nabhisunu',
          ),
          MyFlipCard(
            fronttext:
                'From 1906 to 1920, the role of Md. Ali Jinnah during freedom struggle of India was',
            backtext: 'Nationalist and Secular',
          ),
          MyFlipCard(
            fronttext: 'Sarnath is in the stae of',
            backtext: 'Uttar Pradesh',
          ),
        ],
      ),
    );
  }
}
