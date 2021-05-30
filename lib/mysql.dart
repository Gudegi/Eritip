
import 'package:mysql1/mysql1.dart';

class Mysql {

  Future<List<dynamic>> getConnection() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'database-eritip.cvgx9v3ektbw.ap-northeast-2.rds.amazonaws.com',
        port: 3306,
        user: 'admin',
        password: 'eritip18!',
        db: 'eridb'
    ));

    List <dynamic> result = [];
    List <String> incorrect = ['무슨 말인지 잘 모르겠다냥','inc', '잘 이해를 못했다냥..', 'inco', '잘 이해를 못했다냥.. 혹시 이중에 찾는게 있냥?', 'incor', '잘 이해를 못 했다냥..가이드북을 참고해달라냥.', 'incorr' ];


    var dayCount = await conn.query(
        'SELECT date, COUNT(date) FROM chatLog GROUP BY date ORDER BY date DESC');

    var questionCount = await conn.query(
        'SELECT client, COUNT(client) FROM chatLog GROUP BY client ORDER BY COUNT(client) DESC');


    var allCount = await conn.query(
        'SELECT bot, COUNT(bot) FROM chatLog');
    var incorrectCount = await conn.query(
        'SELECT bot FROM chatLog WHERE bot LIKE ?', ['%잘%']);

    var inferCount = await conn.query(
        'SELECT bot  FROM chatLog WHERE bot LIKE ?',['%[%']);

    int a = inferCount.toList().length;
    int b = allCount.toList()[0]['COUNT(bot)'];
    int c = incorrectCount.toList().length;
    List <dynamic> count = [a] + [b] + [c];

    result = [dayCount.toList()] + [questionCount.toList()] + [inferCount.toList()] + [allCount.toList()] + [incorrectCount.toList()];


  return result;
  }
}