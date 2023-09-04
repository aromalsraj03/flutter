import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  final List<MockData> mockDataList = generateMockData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: ListView.builder(
        itemCount: mockDataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenTwo(mockData: mockDataList[index]),
                  ),
                );
              },
              child: Text(mockDataList[index].title),
            ),
          );
        },
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  final MockData mockData;

  ScreenTwo({required this.mockData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  mockData.title,
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 213, 194, 99), fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                
                child: SingleChildScrollView(
                  child: Text(
                    mockData.description,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Start Date: ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    mockData.startDate,
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),


                             Row(
                children: [
                  Text(
                    'End   Date: ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    mockData.endDate,
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              

              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Individual Score: ${mockData.individualScore}',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width:16),
                  CircularProgressIndicator(
                    value: mockData.individualScore / 100,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                    strokeWidth: 8,
                    semanticsLabel: mockData.individualScore.toString(),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Team Score: ${mockData.teamScore}',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width:39),
                  CircularProgressIndicator(
                    value: mockData.teamScore / 100,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                    strokeWidth: 8,
                    semanticsLabel: mockData.teamScore.toString(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MockData {
  final String title;
  final String description;
  final String startDate;
  final String endDate;
  final double individualScore;
  final double teamScore;

  MockData({
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.individualScore,
    required this.teamScore,
  });
}

List<MockData> generateMockData() {
  return [
    MockData(
      title: 'Project A',
      description: 'Developing a mobile app.. jgeoigh wghwihwguwpg0whfp9uwrh gpwir ghwu9rgh pwighpwg hwp98g  kjfb qoufgwp9uh w8wiufgwouf woufr wluof gwuof gwuf wliuf gweuof gwuofh gwoufrgw98frg wofrugefpo gfp9qiuf g9of8uqgflw8ufgqlkfujqgfikuqtjgfkiwuf qeuf fu w79fg q98fgqe98f gu9f weu9f sw8f w98f w08gq0fq0fih 9fug9fhq0f qf9 qf0 hf9qf8u 0f8 9o8i yfi wuh 989oilk8y foi7u9f8 98 g9u g9898 98 gq9g9u g87f ge9f8 qf97u f9q7u gqi7ugfiu 97 97ff98gfiugfifgiug 9g di ugf9ifufgiujtg  diujgfiyuguyjaf ueg idsugjidyhguyjhjgfkyy i7 7zgiO&sg oki,kustgo8wk7sudjgiawkusyu 7 f kfujgo8iwk7sudjgfb   izdk7jtfg8kus7uzejdxfh8ksmudzf y9okismudfg8kiws7udjfks 7 fcoiluj fcowsujdgf fo8i7 SUjzdfxgo8ik&Suejtdgfb8ikuSUezdtjfo8kSuf of7ofilkuyfho8zd7ujfgckuSuztjgfboKuzgf 8o7itiLsu jtgowkuysujdgfbo8ki7 UzjdgfkuUjzegdkuj7uajtzgdrikujauzj oilwk8rudjzxyfo8iK,SUZEJDTRXGFBwksk7u7 97 gsigsufgwoufgwfwhwrwwwrefwei fewoifhw wio wif wf sou fos fpsoes fiuos fp u efoilu gefoilufoiLsku 9 doiku ij hwoksdujfh  woufhiugifu 9 gw9f gs9f 9ef9ef 9e f9ufu9fkuzjgowk7su ILszu fgo8wiuSjzdgf8u  ik8u g8iu tgkuqjazr 8 ieua tdgr8oi7u ztgiAKmu i7 79qi azdtrgfikujaurgkujMS 7 8 jatezgukj7yAgz i7utazd8u7uTAgezxuj7u r87 Ad8ig Od7ztu g8oi7ztu g87 e87ftiufgiugiufgiufg aiue fiu fa f aefizku tjg8kuwjsyzdgkuS sk twe7 f8iku dfiu kdfqkujd 7tggi0g hwp98gfh wp9g8[g9w f98wfh pwuif w09f hw8yfbwoifj wr[0f89ywof7wofi swr[-9 uwf97 wf9iwu[f9wfubwofuij f8wrfhowufhew;ofjqep80rhfewoutgwoith wpt8 hwp9f8whfouw hfouwhfraq0afr9hygaqfufjw;gfuwhgwo fhwp98fuwpufhwuhwrifjwroighwrpughrwoifhwuf hwu9f pwu f[wgf[sugfshgouwh rgp9wrh fp80w fp0w8 fhp9w8 fhpw8f howi owugfhwufhwoighwpogfh wigh wpig hwp9uhwgihgrihgrwighwioghsoig w9i hwg9urwr gh9wgih g ubgiuogh 9fi hhr9urfhew9uh wef whgqi fhqeogi hwefqefhq fuq gfq 9f gqe9fugqeofuagf sufgqofuqe gfoqef hqofilehfik]]]]]].',
      startDate: '2023-09-01',
      endDate: '2023-09-30',
      individualScore: 85.0,
      teamScore: 92.0,
    ),
    MockData(
      title: 'Web Development',
      description: 'Building an e-commerce website',
      startDate: '2023-08-20',
      endDate: '2023-09-25',
      individualScore: 78.0,
      teamScore: 85.0,
    ),
    // Add more mock data entries here
  ];
}
