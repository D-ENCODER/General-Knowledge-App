import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class OneFortyOneToOneSixty extends StatefulWidget {
  const OneFortyOneToOneSixty({Key? key}) : super(key: key);

  @override
  _OneFortyOneToOneSixtyState createState() => _OneFortyOneToOneSixtyState();
}

class _OneFortyOneToOneSixtyState extends State<OneFortyOneToOneSixty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          MyFlipCard(
            fronttext:
                'The rst to start a joint stock company to trade with India were the',
            backtext: 'Portuguese',
          ),
          MyFlipCard(
            fronttext: 'The word Gotra occurs for the rst time in',
            backtext: 'Rigaveda',
          ),
          MyFlipCard(
            fronttext:
                'Which one of the following was not associated with Indian National Army?',
            backtext: 'Rashbihari Ghosh',
          ),
          MyFlipCard(
            fronttext: 'The ruins of Harappa were rst no ticed by',
            backtext: 'Charles Mason',
          ),
          MyFlipCard(
            fronttext: 'Battle of Talikota took place in the Year?',
            backtext: '1565',
          ),
          MyFlipCard(
            fronttext:
                '“History is a continuous process of interaction between past and present.” Who said this?',
            backtext: 'E. H. Carr',
          ),
          MyFlipCard(
            fronttext:
                'Which Sultan of Delhi died while play ing the chaugan (polo)?',
            backtext: 'Qutbuddin Aibak',
          ),
          MyFlipCard(
            fronttext:
                'The inspirational leader behind the founding of the All India Women’s Con ference was',
            backtext: 'Margaret Cousins',
          ),
          MyFlipCard(
            fronttext: 'Nivi, Paridhan and Adhivasa were the',
            backtext: 'Dierent types of garments of the Aryans',
          ),
          MyFlipCard(
            fronttext: 'The chalcolithic people used to write on',
            backtext: 'Did not know the art of writing',
          ),
          MyFlipCard(
            fronttext:
                'Who was the rst European to desig nate Aryan as a race?',
            backtext: 'Max Muller',
          ),
          MyFlipCard(
            fronttext:
                'The doctrine of three jewels - Right belief, Right conduct and Right knowl edge - is the crownings glory of',
            backtext: 'Jainism',
          ),
          MyFlipCard(
            fronttext: 'Which Indian epigraph yields the rst evidence of zero?',
            backtext: 'Gwaliorinscription of Bhojdeva.',
          ),
          MyFlipCard(
            fronttext:
                'What was the meaning of the symbol Horse of Sambhavnath Tirthankar?',
            backtext: 'Restrained heart',
          ),
          MyFlipCard(
            fronttext:
                'Who was the governor-general dur ing the Revolt of 1857?',
            backtext: 'Lord Canning',
          ),
          MyFlipCard(
            fronttext:
                'The generals of the I.N.A. Shah Nawaz, Gurdial Singh Dhillon and Prem Sehgal, were formerly ocers of the',
            backtext: 'British Indian Army',
          ),
          MyFlipCard(
            fronttext: 'Purushmedha i.e. Male sacrice is re ferred to in',
            backtext: 'Shatapatha Brahman',
          ),
          MyFlipCard(
            fronttext:
                'The text of the document called Mahzar, by which Akbar assumed the role of supreme arbiter in the matters of religion is found in',
            backtext: 'Abul Fazl’s Akbarnama',
          ),
          MyFlipCard(
            fronttext: 'Which of the following is not true of Ashoka?',
            backtext:
                'He granted land to the ministers and the upper-most strata of bureau cracy in lieu of salary.',
          ),
          MyFlipCard(
            fronttext: 'Who was the founder of the Kanva dynasty?',
            backtext: 'Vassudeva',
          ),
        ],
      ),
    );
  }
}
