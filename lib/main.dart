import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';//聲音

final player=AudioPlayer();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _previousIndex=0;
  int _currentindex=0;

  @override
  Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Midterm'),),
          body: tabs[_currentindex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.amberAccent,
            selectedItemColor: Colors.red,
            selectedFontSize: 18.0,
            unselectedFontSize: 14.0,
            iconSize: 30.0,
            currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),
                label: 'Home',),
              BottomNavigationBarItem(icon: Icon(Icons.school),
                label: 'School',),
              BottomNavigationBarItem(icon: Icon(Icons.assignment),
                label: 'Plan',),
              BottomNavigationBarItem(icon: Icon(Icons.auto_stories),
                label: 'Project',),
            ],
            onTap: (index) {
              setState(() {
                _previousIndex=_currentindex;
                _currentindex = index;
                if (index == 0) {
                  if(_previousIndex == _currentindex)
                    player.play(AssetSource("1.mp3"));
                };
                if (index == 1) {
                  if(_previousIndex == _currentindex)
                    player.play(AssetSource("2.mp3"));
                };
                if (index == 2) {
                  if(_previousIndex == _currentindex)
                    player.play(AssetSource("3.mp3"));
                };
                if (index == 3) {
                  if(_previousIndex == _currentindex)
                    player.play(AssetSource("4.mp3"));
                };
              });
            },
          ),
        ),
      );
  }
}
//自我介紹
class screen1 extends StatelessWidget {
  final String s1=
      '我是吳宜霖，目前就讀高雄科技大學資訊工程系大三，家中有五位成員，爸媽和兩個姐姐，父母皆從事教育業，教養方式開明，鼓勵我多方探索並給予協助，從小讓我選擇自己想做的，這樣的教養方式讓我成為獨立自主的人。在個性上我是一位隨和的人，與朋友相處融洽；做事謹慎細心；並富有好奇心勇於嘗試探索各種事物。';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("自我介紹",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          Container(
            color: Colors.white,
            child: Image.asset('images/115755.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6,6)),
              ],),
            child: Text(s1,
              style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
    //return Container(child: Text('Home'),);
  }
}
//學習歷程
class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("學習歷程",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: ListView(
                    children: [
                      Text("國小：台南市東區勝利國小",style: TextStyle(fontSize: 20),),
                      Text("國中：台南市立後甲國中",style: TextStyle(fontSize: 20),),
                      Text("高中：國立台南高級工業職業學校",style: TextStyle(fontSize: 20),),
                      Text("大學：國立高雄科技大學(在學中)",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                )
              ],
            ),
          ],
      ),
    );

  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Text("讀書計畫",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ),
              Column (mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 50,
                        child: ListView(
                          children: [Text("大一：",style: TextStyle(fontSize: 14),),],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: ListView(
                          children: [
                            Text("基礎科目",style: TextStyle(fontSize: 14),),
                            Text("1.微積分",style: TextStyle(fontSize: 14),),
                            Text("2.計算機概論",style: TextStyle(fontSize: 14),),
                            Text("3.組合語言",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column (mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 50,
                        child: ListView(
                          children: [Text("大二：",style: TextStyle(fontSize: 14),),],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: ListView(
                          children: [
                            Text("基礎科目",style: TextStyle(fontSize: 14),),
                            Text("1.離散數學/線性代數/機率與統計",style: TextStyle(fontSize: 14),),
                            Text("2.資料結構",style: TextStyle(fontSize: 14),),
                            Text("3.計算機網路",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column (mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 50,
                        child: ListView(
                          children: [Text("大三：",style: TextStyle(fontSize: 14),),],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: ListView(
                          children: [
                            Text("進階科目",style: TextStyle(fontSize: 14),),
                            Text("1.專題製作",style: TextStyle(fontSize: 14),),
                            Text("2.演算法",style: TextStyle(fontSize: 14),),
                            Text("3.作業系統",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column (mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 50,
                        child: ListView(
                          children: [Text("大四：",style: TextStyle(fontSize: 14),),],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: ListView(
                          children: [
                            Text("深入學習",style: TextStyle(fontSize: 14),),
                            Text("1.網路/資訊安全",style: TextStyle(fontSize: 14),),
                            Text("2.資料探勘",style: TextStyle(fontSize: 14),),
                            Text("3.虛擬實境",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
        ),
    );
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                    child: Text("專案方向",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 300,
                  child: ListView(
                    children: [
                      Text("要求：APP連網後台資料庫",style: TextStyle(fontSize: 16),),
                      Text("",style: TextStyle(fontSize: 16),),
                      Text("預計設計一個簡易的找房APP，後臺資料庫用來儲存房屋資訊",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                )
              ],
            ),
          ],
      ),
    );
  }
}
