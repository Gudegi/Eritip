import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

final clear_blue = const Color(0xa31959e6);
int n_hour = DateTime.now().hour;
int n_minute = DateTime.now().minute;
int n_week = DateTime.now().weekday;

class shuttle_now extends StatelessWidget {
  @override
  final String title;
  final int hours, minutes, weeks, value;
  int m_minute = 0;
  bool visible = false;
  shuttle_now({
    @required this.title,
    @required this.hours,
    @required this.minutes,
    @required this.weeks,
    @required this.value,
  });

  Widget build(BuildContext context) {
    m_minute = minutes - n_minute;
    if (value == 1) {
      if (hours < 19 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 9) && (m_minute > 0)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour == hours) &&(m_minute <= 45) && (m_minute >= 00) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 9) && (m_minute > 5) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 46) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else if (hours >= 19 && hours <= 22) {
        if ((n_hour == hours) && ((m_minute <= 29) && (m_minute > 0)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour == hours) && ((m_minute <= 44) && (m_minute >= 0))  && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour+1 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 29) && (m_minute >= 16)&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          } else if ((m_minute <= 59) && (m_minute >= 46)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }

    }  //처리.

    else if(value == 2){
      if (hours < 22 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 29) && (m_minute > 0))&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else  if ((n_hour == hours) && ((m_minute <= 44) && (m_minute > 0))&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }

        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute >= 16) && (m_minute <= 29) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 46) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }
    } //처리.

    else if (value == 3) {
      if (hours < 19 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 9) && (m_minute > 0)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour == hours) &&(m_minute <= 49) && (m_minute >= 00) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 9) && (m_minute >= 1) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 51) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else if (hours >= 19 && hours <= 22) {
        if ((n_hour == hours) && ((m_minute <= 29) && (m_minute >= 0)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour == hours) && ((m_minute <= 49) && (m_minute >= 0))  && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour+1 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 59) && (m_minute >= 51)&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 51)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }

    }  //처리.

    else if(value == 4){
      if (hours < 22 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 29) && (m_minute > 0))&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else  if ((n_hour == hours) && ((m_minute <= 44) && (m_minute > 0))&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }

        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute >= 21) && (m_minute <= 29) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 51) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }
    } //처리.

    else if (value == 5) {
      if (hours < 19 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 9) && (m_minute > 0)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 9) && (m_minute >= 1) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 01) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else if (hours >= 19 && hours <= 22) {
        if ((n_hour == hours) && ((m_minute <= 29) && (m_minute > 0)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour+1 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 59) && (m_minute >= 31)&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          } else if ((m_minute <= 59) && (m_minute >= 01)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }

    }  //처리

    else if(value == 6){
      if (hours < 22 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 29) && (m_minute > 0))&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else  if ((n_hour == hours) && ((m_minute <= 4) && (m_minute > 0))&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }

        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute >= 1) && (m_minute <= 24) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 59) && (m_minute >= 06) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }
    } //처리
  }
}

class shuttle_next extends StatelessWidget {
  @override
  final String title;
  final int hours, minutes, weeks, value;
  int m_minute = 0;
  bool visible = false;
  shuttle_next({
    @required this.title,
    @required this.hours,
    @required this.minutes,
    @required this.weeks,
    @required this.value,
  });

  Widget build(BuildContext context) {
    m_minute = minutes - n_minute;
    if (value == 1) {
      if (hours < 19 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 19) && (m_minute > 10)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 2 == hours) && (m_minute < 0)&&
            (weeks == 1) && ((n_week == 6) || (n_week == 7))) {
          m_minute = m_minute + 60;
          if ( (m_minute <= 46) && (m_minute >= 59) ) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + (m_minute+60).toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 19) && (m_minute > 15) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 45) && (m_minute >= 00) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else if (hours >= 19 && hours <= 22) {
        if ((n_hour == hours) && ((m_minute <= 59) && (m_minute > 29)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }

        else if ((n_hour < hours) && (n_hour+1 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 29) && (m_minute >= 16)&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + (m_minute+60).toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          } else if ((m_minute <= 44) && (m_minute >= 0)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else if ((n_hour < hours) && (n_hour+2 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if (((m_minute <= 59) && (m_minute >= 45))  && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }

    }  //처리.

    else if(value == 2){
      if (hours < 22 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 59) && (m_minute > 30))&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 2 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((n_hour == hours) && ((m_minute <= 59) && (m_minute >= 46)) &&
              (weeks == 1) && ((n_week == 6) || (n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(
                  title + '남은시간 = ' + (m_minute+60).toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute >= 11) && (m_minute <= 19) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 00) && (m_minute >= 46) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }
    } //처리.

    else if (value == 3) {
      if (hours < 19 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 19) && (m_minute > 10)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 2 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((n_hour == hours) && (m_minute <= 59) && (m_minute >= 51) &&
              (weeks == 1) && ((n_week == 6) || (n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + (m_minute+60).toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 11) && (m_minute >= 19) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 49) && (m_minute >= 00) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else if (hours >= 19 && hours <= 22) {
        if ((n_hour == hours) && ((m_minute <= 59) && (m_minute >= 30)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour+2 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 59) && (m_minute >= 51)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else if ((n_hour < hours) && (n_hour+1 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 59) && (m_minute >= 51)&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 50) && (m_minute >= 00)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }

    }  //처리.

    else if(value == 4){
      if (hours < 22 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 59) && (m_minute > 29))&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 2 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute <= 59) && (m_minute >= 51) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }

        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute >= 51) && (m_minute <= 59) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 50) && (m_minute >= 00) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }
    } //처리.

    else if (value == 5) {
      if (hours < 19 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 19) && (m_minute > 10)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 2 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 59) && (m_minute >= 01) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((m_minute <= 19) && (m_minute >= 11) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else if (hours >= 19 && hours <= 22) {
        if ((n_hour == hours) && ((m_minute <= 59) && (m_minute > 29)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        } else if ((n_hour < hours) && (n_hour+2 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 59) && (m_minute >= 01)&&(weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }


        else if ((n_hour < hours) && (n_hour+1 == hours) && (m_minute < 0)) {
          visible = true;
          m_minute = m_minute + 60;
          if ((m_minute <= 30) && (m_minute >= 00)&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }

    }  //처리

    else if(value == 6){
      if (hours < 22 && hours >= 7 ) {
        if ((n_hour == hours) && ((m_minute <= 35) && (m_minute >= 31))&&(weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + m_minute.toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
        else if ((n_hour < hours) && (n_hour + 2 == hours) && (m_minute < 0)) {
          m_minute = m_minute + 60;
          if ((n_hour == hours) && ((m_minute <= 4) && (m_minute > 0)) &&
            (weeks == 1) && ((n_week == 6) || (n_week == 7))) {
          visible = true;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 = ' + (m_minute+60).toString() + "분 (2번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
      }
        else if ((n_hour < hours) && (n_hour + 1 == hours) && (m_minute < 0)) {
          m_minute = m_minute +60;
          if ((m_minute >= 31) && (m_minute <= 59) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + (m_minute).toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else if ((m_minute <= 00) && (m_minute >= 04) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {
            visible = true;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (2번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
          else {
            visible = false;
            return Visibility(
                visible: visible,
                child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                  ),
                )
            );
          }
        }
        else {
          visible = false;
          return Visibility(
              visible: visible,
              child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gothic",
                    fontStyle: FontStyle.normal,
                    fontSize: 15
                ),
              )
          );
        }
      }
      else {
        visible = false;
        return Visibility(
            visible: visible,
            child: Text(title + '남은시간 =' + m_minute.toString() + "분 (1번째)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gothic",
                  fontStyle: FontStyle.normal,
                  fontSize: 15
              ),
            )
        );
      }
    } //처리
  }
}

class shuttle1  extends StatelessWidget {

  Widget build(BuildContext context) {
    return Column(
      children: [
        shuttle_now(title : '(순환)',hours: 07,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 07,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 08,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 08,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 08,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 08,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 08,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 08,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 09,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 09,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 09,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 09,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 09,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 09,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 10,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 10,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 10,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 10,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 10,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 10,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 11,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 11,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 11,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 11,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 11,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 11,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 12,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 12,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 12,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 12,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 12,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 12,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 13,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 13,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 13,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 13,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 13,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 13,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 14,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 14,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 14,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 14,minutes: 35,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 14,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 14,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 15,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 15,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 15,minutes: 25,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 15,minutes: 35,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 15,minutes: 45,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 15,minutes: 55,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 16,minutes: 05,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 16,minutes: 15,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 16,minutes: 25,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 16,minutes: 35,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 16,minutes: 45,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 16,minutes: 55,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 17,minutes: 05,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 17,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 17,minutes: 25,weeks: 0,value:1),
        shuttle_now(title : '(직행)',hours: 17,minutes: 35,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 17,minutes: 45,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 17,minutes: 55,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 18,minutes: 05,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 18,minutes: 15,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 18,minutes: 25,weeks:0 ,value:1),
        shuttle_now(title : '(직행)',hours: 18,minutes: 35,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 18,minutes: 45,weeks:0 ,value:1),
        shuttle_now(title : '(순환)',hours: 19,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 19,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 20,minutes: 15,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 20,minutes: 45,weeks: 0,value:1),
        shuttle_now(title : '(순환)',hours: 21,minutes: 15,weeks: 0,value:1),







        shuttle_next(title : '(순환)',hours: 07,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 07,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 08,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 08,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 08,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 08,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 08,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 08,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 09,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 09,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 09,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 09,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 09,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 09,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 10,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 10,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 10,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 10,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 10,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 10,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 11,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 11,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 11,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 11,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 11,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 11,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 12,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 12,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 12,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 12,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 12,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 12,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 13,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 13,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 13,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 13,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 13,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 13,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 14,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 14,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 14,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 14,minutes: 35,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 14,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 14,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 15,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 15,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 15,minutes: 25,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 15,minutes: 35,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 15,minutes: 45,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 15,minutes: 55,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 16,minutes: 05,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 16,minutes: 15,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 16,minutes: 25,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 16,minutes: 35,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 16,minutes: 45,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 16,minutes: 55,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 17,minutes: 05,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 17,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 17,minutes: 25,weeks: 0,value:1),
        shuttle_next(title : '(직행)',hours: 17,minutes: 35,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 17,minutes: 45,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 17,minutes: 55,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 18,minutes: 05,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 18,minutes: 15,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 18,minutes: 25,weeks:0 ,value:1),
        shuttle_next(title : '(직행)',hours: 18,minutes: 35,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 18,minutes: 45,weeks:0 ,value:1),
        shuttle_next(title : '(순환)',hours: 19,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 19,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 20,minutes: 15,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 20,minutes: 45,weeks: 0,value:1),
        shuttle_next(title : '(순환)',hours: 21,minutes: 15,weeks: 0,value:1),

        shuttle_now(title : '(순환)',hours: 09,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 10,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 11,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 12,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 13,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 14,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 15,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 16,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 17,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 18,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 19,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 20,minutes: 45,weeks: 1,value:1),
        shuttle_now(title : '(순환)',hours: 21,minutes: 45,weeks: 1,value:1),

        shuttle_next(title : '(순환)',hours: 09,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 10,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 11,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 12,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 13,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 14,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 15,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 16,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 17,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 18,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 19,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 20,minutes: 45,weeks: 1,value:1),
        shuttle_next(title : '(순환)',hours: 21,minutes: 45,weeks: 1,value:1),

        SizedBox(height: 4),
      ],
    );
  }
}
class shuttle2  extends StatelessWidget {

  Widget build(BuildContext context) {
    return Column(
      children: [
        shuttle_now(title : '(순환)',hours: 07,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 08,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 08,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 09,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 09,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 10,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 10,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 11,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 11,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 12,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 12,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 13,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 13,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 14,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 14,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 15,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 15,minutes: 45,weeks:0 ,value: 2),
        shuttle_now(title : '(순환)',hours: 16,minutes: 15,weeks:0 ,value: 2),
        shuttle_now(title : '(순환)',hours: 16,minutes: 45,weeks:0 ,value: 2),
        shuttle_now(title : '(순환)',hours: 17,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 17,minutes: 45,weeks:0 ,value: 2),
        shuttle_now(title : '(순환)',hours: 18,minutes: 15,weeks:0 ,value: 2),
        shuttle_now(title : '(순환)',hours: 18,minutes: 45,weeks:0 ,value: 2),
        shuttle_now(title : '(순환)',hours: 19,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 19,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 21,minutes: 15,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 21,minutes: 45,weeks: 0,value: 2),
        shuttle_now(title : '(순환)',hours: 22,minutes: 15,weeks: 0,value: 2),

        shuttle_now(title : '(순환)',hours: 08,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 09,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 10,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 11,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 12,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 13,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 14,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 15,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 16,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 17,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 18,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 19,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 20,minutes: 45,weeks: 1,value: 2),
        shuttle_now(title : '(순환)',hours: 21,minutes: 45,weeks: 1,value: 2),

        shuttle_next(title : '(순환)',hours: 07,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 08,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 08,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 09,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 09,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 10,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 10,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 11,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 11,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 12,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 12,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 13,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 13,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 14,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 14,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 15,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 15,minutes: 45,weeks:0 ,value: 2),
        shuttle_next(title : '(순환)',hours: 16,minutes: 15,weeks:0 ,value: 2),
        shuttle_next(title : '(순환)',hours: 16,minutes: 45,weeks:0 ,value: 2),
        shuttle_next(title : '(순환)',hours: 17,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 17,minutes: 45,weeks:0 ,value: 2),
        shuttle_next(title : '(순환)',hours: 18,minutes: 15,weeks:0 ,value: 2),
        shuttle_next(title : '(순환)',hours: 18,minutes: 45,weeks:0 ,value: 2),
        shuttle_next(title : '(순환)',hours: 19,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 19,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 21,minutes: 15,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 21,minutes: 45,weeks: 0,value: 2),
        shuttle_next(title : '(순환)',hours: 22,minutes: 15,weeks: 0,value: 2),

        shuttle_next(title : '(순환)',hours: 08,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 09,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 10,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 11,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 12,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 13,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 14,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 15,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 16,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 17,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 18,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 19,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 20,minutes: 45,weeks: 1,value: 2),
        shuttle_next(title : '(순환)',hours: 21,minutes: 45,weeks: 1,value: 2),

        SizedBox(height: 4),
      ],
    );
  }
}
class shuttle3  extends StatelessWidget {

  Widget build(BuildContext context) {
    return Column(
      children: [
        shuttle_now(title : '(순환)',hours: 07,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 08,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 08,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 08,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 08,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 08,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 08,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 09,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 09,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 09,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 09,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 09,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 09,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 10,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 10,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 10,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 10,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 10,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 10,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 11,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 11,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 11,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 11,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 11,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 11,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 12,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 12,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 12,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 12,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 12,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 12,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 13,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 13,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 13,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 13,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 13,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 13,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 14,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 14,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 14,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 14,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 14,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 14,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 15,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 15,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 15,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 15,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 15,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 15,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 16,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 16,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 16,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 16,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 16,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 16,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 17,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 17,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 17,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 17,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 17,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 17,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 18,minutes: 00,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 18,minutes: 10,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 18,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 18,minutes: 30,weeks: 0,value: 3),
        shuttle_now(title : '(직행)',hours: 18,minutes: 40,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 18,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 19,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 19,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 20,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 20,minutes: 50,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 21,minutes: 20,weeks: 0,value: 3),
        shuttle_now(title : '(순환)',hours: 21,minutes: 50,weeks: 0,value: 3),

        shuttle_now(title : '(순환)',hours: 08,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 09,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 10,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 11,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 12,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 13,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 14,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 15,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 16,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 17,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 18,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 19,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 20,minutes: 50,weeks: 1,value: 3),
        shuttle_now(title : '(순환)',hours: 21,minutes: 50,weeks: 1,value: 3),


        shuttle_next(title : '(직행)',hours: 08,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 08,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 08,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 08,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 08,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 08,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 09,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 09,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 09,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 09,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 09,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 09,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 10,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 10,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 10,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 10,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 10,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 10,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 11,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 11,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 11,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 11,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 11,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 11,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 12,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 12,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 12,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 12,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 12,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 12,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 13,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 13,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 13,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 13,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 13,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 13,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 14,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 14,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 14,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 14,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 14,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 14,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 15,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 15,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 15,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 15,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 15,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 15,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 16,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 16,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 16,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 16,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 16,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 16,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 17,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 17,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 17,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 17,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 17,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 17,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 18,minutes: 00,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 18,minutes: 10,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 18,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 18,minutes: 30,weeks: 0,value: 3),
        shuttle_next(title : '(직행)',hours: 18,minutes: 40,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 18,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 19,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 19,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 20,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 20,minutes: 50,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 21,minutes: 20,weeks: 0,value: 3),
        shuttle_next(title : '(순환)',hours: 21,minutes: 50,weeks: 0,value: 3),

        shuttle_next(title : '(순환)',hours: 08,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 09,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 10,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 11,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 12,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 13,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 14,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 15,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 16,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 17,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 18,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 19,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 20,minutes: 50,weeks: 1,value: 3),
        shuttle_next(title : '(순환)',hours: 21,minutes: 50,weeks: 1,value: 3),
        SizedBox(height: 4),
      ],
    );
  }
}
class shuttle4  extends StatelessWidget {

  Widget build(BuildContext context) {
    return Column(
      children: [
        shuttle_now(title : '(순환)',hours: 07,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 08,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 08,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 09,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 09,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 10,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 10,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 11,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 11,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 12,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 12,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 13,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 13,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 14,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 14,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 15,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 15,minutes: 50,weeks:0 ,value: 4),
        shuttle_now(title : '(순환)',hours: 16,minutes: 20,weeks:0 ,value: 4),
        shuttle_now(title : '(순환)',hours: 16,minutes: 50,weeks:0 ,value: 4),
        shuttle_now(title : '(순환)',hours: 17,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 17,minutes: 50,weeks:0 ,value: 4),
        shuttle_now(title : '(순환)',hours: 18,minutes: 20,weeks:0 ,value: 4),
        shuttle_now(title : '(순환)',hours: 18,minutes: 50,weeks:0 ,value: 4),
        shuttle_now(title : '(순환)',hours: 19,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 19,minutes: 50,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 21,minutes: 20,weeks: 0,value: 4),
        shuttle_now(title : '(순환)',hours: 21,minutes: 50,weeks: 0,value: 4),

        shuttle_now(title : '(순환)',hours: 08,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 09,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 10,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 11,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 12,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 13,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 14,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 15,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 16,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 17,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 18,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 19,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 20,minutes: 50,weeks: 1,value: 4),
        shuttle_now(title : '(순환)',hours: 21,minutes: 50,weeks: 1,value: 4),

        shuttle_next(title : '(순환)',hours: 07,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 08,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 08,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 09,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 09,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 10,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 10,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 11,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 11,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 12,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 12,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 13,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 13,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 14,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 14,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 15,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 15,minutes: 50,weeks:0 ,value: 4),
        shuttle_next(title : '(순환)',hours: 16,minutes: 20,weeks:0 ,value: 4),
        shuttle_next(title : '(순환)',hours: 16,minutes: 50,weeks:0 ,value: 4),
        shuttle_next(title : '(순환)',hours: 17,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 17,minutes: 50,weeks:0 ,value: 4),
        shuttle_next(title : '(순환)',hours: 18,minutes: 20,weeks:0 ,value: 4),
        shuttle_next(title : '(순환)',hours: 18,minutes: 50,weeks:0 ,value: 4),
        shuttle_next(title : '(순환)',hours: 19,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 19,minutes: 50,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 21,minutes: 20,weeks: 0,value: 4),
        shuttle_next(title : '(순환)',hours: 21,minutes: 50,weeks: 0,value: 4),

        shuttle_next(title : '(순환)',hours: 08,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 09,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 10,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 11,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 12,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 13,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 14,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 15,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 16,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 17,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 18,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 19,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 20,minutes: 50,weeks: 1,value: 4),
        shuttle_next(title : '(순환)',hours: 21,minutes: 50,weeks: 1,value: 4),

        SizedBox(height: 4),
      ],
    );
  }
}
class shuttle5  extends StatelessWidget {

  Widget build(BuildContext context) {
    return Column(
      children: [

        shuttle_now(title : '(순환)',hours: 08,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 08,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 08,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 08,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 08,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 08,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 09,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 09,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 09,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 09,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 09,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 09,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 10,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 10,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 10,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 10,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 10,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 10,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 11,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 11,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 11,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 11,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 11,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 11,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 12,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 12,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 12,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 12,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 12,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 12,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 13,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 13,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 13,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 13,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 13,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 13,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 14,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 14,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 14,minutes: 20,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 14,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 14,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 14,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 15,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 15,minutes: 10,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 15,minutes: 20,weeks:0 ,value:5),
        shuttle_now(title : '(순환)',hours: 15,minutes: 30,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 15,minutes: 40,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 15,minutes: 50,weeks:0 ,value:5),
        shuttle_now(title : '(순환)',hours: 16,minutes: 00,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 16,minutes: 10,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 16,minutes: 20,weeks:0 ,value:5),
        shuttle_now(title : '(순환)',hours: 16,minutes: 30,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 16,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 16,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 17,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 17,minutes: 10,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 17,minutes: 20,weeks:0 ,value:5),
        shuttle_now(title : '(순환)',hours: 17,minutes: 30,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 17,minutes: 40,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 17,minutes: 50,weeks:0 ,value:5),
        shuttle_now(title : '(순환)',hours: 18,minutes: 00,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 18,minutes: 10,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 18,minutes: 20,weeks:0 ,value:5),
        shuttle_now(title : '(순환)',hours: 18,minutes: 30,weeks:0 ,value:5),
        shuttle_now(title : '(직행)',hours: 18,minutes: 40,weeks: 0,value:5),
        shuttle_now(title : '(직행)',hours: 18,minutes: 50,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 19,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 19,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 20,minutes: 00,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 21,minutes: 30,weeks: 0,value:5),
        shuttle_now(title : '(순환)',hours: 22,minutes: 00,weeks: 0,value:5),






        shuttle_next(title : '(순환)',hours: 08,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 08,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 08,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 08,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 08,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 08,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 09,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 09,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 09,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 09,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 09,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 09,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 10,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 10,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 10,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 10,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 10,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 10,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 11,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 11,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 11,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 11,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 11,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 11,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 12,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 12,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 12,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 12,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 12,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 12,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 13,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 13,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 13,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 13,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 13,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 13,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 14,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 14,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 14,minutes: 20,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 14,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 14,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 14,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 15,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 15,minutes: 10,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 15,minutes: 20,weeks:0 ,value:5),
        shuttle_next(title : '(순환)',hours: 15,minutes: 30,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 15,minutes: 40,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 15,minutes: 50,weeks:0 ,value:5),
        shuttle_next(title : '(순환)',hours: 16,minutes: 00,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 16,minutes: 10,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 16,minutes: 20,weeks:0 ,value:5),
        shuttle_next(title : '(순환)',hours: 16,minutes: 30,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 16,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 16,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 17,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 17,minutes: 10,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 17,minutes: 20,weeks:0 ,value:5),
        shuttle_next(title : '(순환)',hours: 17,minutes: 30,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 17,minutes: 40,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 17,minutes: 50,weeks:0 ,value:5),
        shuttle_next(title : '(순환)',hours: 18,minutes: 00,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 18,minutes: 10,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 18,minutes: 20,weeks:0 ,value:5),
        shuttle_next(title : '(순환)',hours: 18,minutes: 30,weeks:0 ,value:5),
        shuttle_next(title : '(직행)',hours: 18,minutes: 40,weeks: 0,value:5),
        shuttle_next(title : '(직행)',hours: 18,minutes: 50,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 19,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 19,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 20,minutes: 00,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 21,minutes: 30,weeks: 0,value:5),
        shuttle_next(title : '(순환)',hours: 22,minutes: 00,weeks: 0,value:5),

        shuttle_now(title : '(순환)',hours: 09,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 10,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 11,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 12,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 13,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 14,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 15,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 16,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 17,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 18,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 19,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 20,minutes: 00,weeks: 1,value:5),
        shuttle_now(title : '(순환)',hours: 21,minutes: 00,weeks: 1,value:5),

        shuttle_next(title : '(순환)',hours: 09,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 10,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 11,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 12,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 13,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 14,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 15,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 16,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 17,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 18,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 19,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 20,minutes: 00,weeks: 1,value:5),
        shuttle_next(title : '(순환)',hours: 21,minutes: 00,weeks: 1,value:5),

        SizedBox(height: 4),
      ],
    );
  }
}
class shuttle6  extends StatelessWidget {

  Widget build(BuildContext context) {
    return Column(
      children: [

        shuttle_now(title : '(순환)',hours: 08,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 08,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 09,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 09,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 10,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 10,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 11,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 11,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 12,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 12,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 13,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 13,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 14,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 14,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 15,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 15,minutes: 35,weeks:0 ,value:6),
        shuttle_now(title : '(순환)',hours: 16,minutes: 05,weeks:0 ,value:6),
        shuttle_now(title : '(순환)',hours: 16,minutes: 35,weeks:0 ,value:6),
        shuttle_now(title : '(순환)',hours: 17,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 17,minutes: 35,weeks:0 ,value:6),
        shuttle_now(title : '(순환)',hours: 18,minutes: 05,weeks:0 ,value:6),
        shuttle_now(title : '(순환)',hours: 18,minutes: 35,weeks:0 ,value:6),
        shuttle_now(title : '(순환)',hours: 19,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 19,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 20,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 20,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 21,minutes: 05,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 21,minutes: 35,weeks: 0,value:6),
        shuttle_now(title : '(순환)',hours: 22,minutes: 05,weeks: 0,value:6),


        shuttle_next(title : '(순환)',hours: 08,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 08,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 09,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 09,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 10,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 10,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 11,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 11,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 12,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 12,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 13,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 13,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 14,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 14,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 15,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 15,minutes: 35,weeks:0 ,value:6),
        shuttle_next(title : '(순환)',hours: 16,minutes: 05,weeks:0 ,value:6),
        shuttle_next(title : '(순환)',hours: 16,minutes: 35,weeks:0 ,value:6),
        shuttle_next(title : '(순환)',hours: 17,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 17,minutes: 35,weeks:0 ,value:6),
        shuttle_next(title : '(순환)',hours: 18,minutes: 05,weeks:0 ,value:6),
        shuttle_next(title : '(순환)',hours: 18,minutes: 35,weeks:0 ,value:6),
        shuttle_next(title : '(순환)',hours: 19,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 19,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 20,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 20,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 21,minutes: 05,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 21,minutes: 35,weeks: 0,value:6),
        shuttle_next(title : '(순환)',hours: 22,minutes: 05,weeks: 0,value:6),

        shuttle_now(title : '(순환)',hours: 09,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 10,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 11,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 12,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 13,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 14,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 15,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 16,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 17,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 18,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 19,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 20,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 21,minutes: 05,weeks: 1,value:6),
        shuttle_now(title : '(순환)',hours: 22,minutes: 05,weeks: 1,value:6),

        shuttle_next(title : '(순환)',hours: 09,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 10,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 11,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 12,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 13,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 14,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 15,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 16,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 17,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 18,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 19,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 20,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 21,minutes: 05,weeks: 1,value:6),
        shuttle_next(title : '(순환)',hours: 22,minutes: 05,weeks: 1,value:6),

        SizedBox(height: 4),
      ],
    );
  }
}

class ClockViewList1 extends StatelessWidget{
  final String title;
  final int hours,minutes,weeks,value;

  bool visible = true;

  static const clear_blue = const Color(0xa31959e6);
  ClockViewList1({
    @required this.title,
    @required this.hours,
    @required this.minutes,
    @required this.weeks,
    @required this.value,
});

  @override
  Widget build(BuildContext context) {
    if (minutes != 0) {
      if ((((n_hour == hours) && (n_minute < minutes)) ||
          (n_hour + 1 == hours) && (n_minute > minutes)) && (weeks == 1) &&
          ((n_week == 6) || (n_week == 7))) {
        visible = true;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  color: clear_blue,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title + " ← 예정",
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      } else
      if (((hours < n_hour) || (n_hour == hours) && (n_minute > minutes)) &&
          (weeks == 1)) {
        visible = false;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title + " ← 예정",
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      }
      else
      if (((n_hour > hours) || ((n_hour == hours) && (n_minute > minutes))) &&
          (weeks == 0)
          &&
          ((n_week == 1) || (n_week == 2) || (n_week == 3) || (n_week == 4) ||
              (n_week == 5))) {
        visible = false;
        return Visibility(
            visible: visible,
            child: Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width),
                    child: Text(title,
                        style: TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        )
                    )
                )
            )
        );
      }
      else if (((n_hour == hours) && (n_minute < minutes) &&
          (n_minute + 10 > minutes)) && (weeks == 0) &&
          ((n_week == 1) || (n_week == 2) || (n_week == 3) || (n_week == 4) ||
              (n_week == 5))) { // 10분간격
        visible = true;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  color: clear_blue,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title + " ← 예정",
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      }
      else if (((weeks == 0) &&
          (((n_hour == hours) && (n_minute < minutes)) ||
              (n_hour < hours))) ||
          ((weeks == 1) && (((n_hour == hours) && (n_minute < minutes)) ||
              (n_hour < hours)))) {
        visible = true;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title,
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      }
    }
    else {
      int o_minutes = 60;
      if ((((n_hour == hours) && (n_minute < o_minutes)) ||
          (n_hour + 1 == hours) && (n_minute > minutes)) && (weeks == 1) &&
          ((n_week == 6) || (n_week == 7))) {
        visible = true;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  color: clear_blue,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title + " ← 예정",
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      } else if (((hours < n_hour) ||
          ((n_hour == hours) && (n_minute > minutes + 15))) &&
          (weeks == 1)) {
        visible = false;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title + " ← 예정",
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      }
      else if (((n_hour > hours) ||
          ((n_hour == hours) && (n_minute > minutes))) &&
          (weeks == 0)
          &&
          ((n_week == 1) || (n_week == 2) || (n_week == 3) ||
              (n_week == 4) ||
              (n_week == 5))) {
        visible = false;
        return Visibility(
            visible: visible,
            child: Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width),
                    child: Text(title,
                        style: TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        )
                    )
                )
            )
        );
      }
      else if ((((n_hour == hours) && (n_minute < minutes) &&
          (n_minute + 10 > minutes)) ||
          ((hours > n_hour) && (hours < n_hour + 2) &&
              (minutes < o_minutes) && (minutes > 50))) && (weeks == 0) &&
          ((n_week == 1) || (n_week == 2) || (n_week == 3) ||
              (n_week == 4) ||
              (n_week == 5))) { // 10분간격
        visible = true;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  color: clear_blue,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title + " ← 예정",
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      }
      else if (((weeks == 0) &&
          (((n_hour == hours) && (n_minute < minutes)) ||
              (n_hour < hours))) ||
          ((weeks == 1) && (((n_hour == hours) && (n_minute < minutes)) ||
              (n_hour < hours)))) {
        visible = true;
        return Visibility(
            visible: visible,
            child: ListTile(
              title: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SizedBox(
                      width: (MediaQuery
                          .of(context)
                          .size
                          .width),
                      child: Text(title,
                          style: TextStyle(
                            fontFamily: "Gothic",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          )
                      )
                  )
              ),
            )
        );
      }
    }
  }
}
class ClockViewList2 extends StatelessWidget{
  final String title;
  final int hours,minutes,weeks,value;

  bool visible = true;

  static const clear_blue = const Color(0xa31959e6);
  ClockViewList2({
    @required this.title,
    @required this.hours,
    @required this.minutes,
    @required this.weeks,
    @required this.value,
  });

  @override
  Widget build(BuildContext context) {
    if ((((n_hour == hours) && (n_minute < minutes))||(n_hour+1 == hours)&&(n_minute > minutes)) && (weeks == 1)&&((n_week == 6)||(n_week == 7))) {

      visible = true;
      return Visibility(
          visible: visible,
          child: ListTile(
            title: Container(
                color: clear_blue,
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width),
                    child: Text(title + " ← 예정",
                        style: TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        )
                    )
                )
            ),
          )
      );
    } else if (((hours < n_hour)||(n_hour == hours)&&(n_minute > minutes)) && (weeks == 1)) {
      visible = false;
      return Visibility(
          visible: visible,
          child: ListTile(
            title: Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width),
                    child: Text(title + " ← 예정",
                        style: TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        )
                    )
                )
            ),
          )
      );
    }
    else if (((n_hour > hours) ||((n_hour== hours)&& (n_minute > minutes))) && (weeks == 0)
        &&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) {
      visible = false;
      return Visibility(
          visible: visible,
          child:  Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: SizedBox(
                  width: (MediaQuery
                      .of(context)
                      .size
                      .width),
                  child: Text(title,
                      style: TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black,
                      )
                  )
              )
          )
      );
    }
    else if (((n_hour == hours)&& (n_minute < minutes)&&(n_minute+30>minutes)) && (weeks == 0)&&((n_week == 1)||(n_week == 2)||(n_week == 3)||(n_week == 4)||(n_week == 5))) { // 10분간격
      visible = true;
      return Visibility(
          visible: visible,
          child: ListTile(
            title: Container(
                color: clear_blue,
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                    width: (MediaQuery.of(context).size.width),
                    child: Text(title + " ← 예정",
                        style: TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        )
                    )
                )
            ),
          )
      );
    }
    else if (((weeks == 0) && (((n_hour == hours)&&(n_minute<minutes))||(n_hour<hours))) || ((weeks == 1) && (((n_hour == hours)&&(n_minute<minutes))||(n_hour<hours)))) {
      visible = true;
      return Visibility(
          visible: visible,
          child: ListTile(
            title: Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width),
                    child: Text(title,
                        style: TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black,
                        )
                    )
                )
            ),
          )
      );
    }
  }
}


class Shuttle_1 extends StatelessWidget { //창의 > 한대
  static const clear_blue = const Color(0xa31959e6);
  bool visible = true;


  @override
  Widget build(BuildContext context) {

    if(n_week == 6 || n_week == 7){
      print('' + n_week.toString());
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("창의인재원 → 한대앞",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                  indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList1(title : ' 순환       09:45 → 10:00',hours: 09,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       10:45 → 11:00',hours: 10,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       11:45 → 12:00',hours: 11,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       12:45 → 13:00',hours: 12,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       13:45 → 14:00',hours: 13,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       14:45 → 15:00',hours: 14,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       15:45 → 16:00',hours: 15,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       16:45 → 17:00',hours: 16,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       17:45 → 18:00',hours: 17,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       18:45 → 19:00',hours: 18,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       19:45 → 20:00',hours: 19,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       20:45 → 21:00',hours: 20,minutes: 45,weeks: 1,value:0),
                        ClockViewList1(title : ' 순환       21:45 → 22:00',hours: 21,minutes: 45,weeks: 1,value:0)
                      ],
                    ),//주말
                    ListView(
                      children: [
                        ClockViewList1(title : ' 순환       07:45 → 08:00',hours: 07,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       07:55 → 08:10',hours: 07,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       08:05 → 08:20',hours: 08,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       08:15 → 08:30',hours: 08,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       08:25 → 08:40',hours: 08,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       08:35 → 08:50',hours: 08,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       08:45 → 09:00',hours: 08,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       08:55 → 09:10',hours: 08,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       09:05 → 09:20',hours: 09,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       09:15 → 09:30',hours: 09,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       09:25 → 09:40',hours: 09,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       09:35 → 09:50',hours: 09,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       09:45 → 10:00',hours: 09,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       09:55 → 10:10',hours: 09,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       10:05 → 10:20',hours: 10,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       10:15 → 10:30',hours: 10,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       10:25 → 10:40',hours: 10,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       10:35 → 10:50',hours: 10,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       10:45 → 11:00',hours: 10,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       10:55 → 11:10',hours: 10,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       11:05 → 11:20',hours: 11,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       11:15 → 11:30',hours: 11,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       11:25 → 11:40',hours: 11,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       11:35 → 11:50',hours: 11,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       11:45 → 12:00',hours: 11,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       11:55 → 12:10',hours: 11,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       12:05 → 12:20',hours: 12,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       12:15 → 12:30',hours: 12,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       12:25 → 12:40',hours: 12,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       12:35 → 12:50',hours: 12,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       12:45 → 13:00',hours: 12,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       12:55 → 13:10',hours: 12,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       13:05 → 13:20',hours: 13,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       13:15 → 13:30',hours: 13,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       13:25 → 13:40',hours: 13,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       13:35 → 13:50',hours: 13,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       13:45 → 14:00',hours: 13,minutes: 45,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       13:55 → 14:10',hours: 13,minutes: 55,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       14:05 → 14:20',hours: 14,minutes: 05,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       14:15 → 14:30',hours: 14,minutes: 15,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       14:25 → 14:40',hours: 14,minutes: 25,weeks: 0,value:0),
                        ClockViewList1(title : ' 직행       14:35 → 14:50',hours: 14,minutes: 35,weeks: 0,value:0),
                        ClockViewList1(title : ' 순환       14:45 → 15:00',hours: 14,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       14:55 → 15:10',hours: 14,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       15:05 → 15:20',hours: 15,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       15:15 → 15:30',hours: 15,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       15:25 → 15:40',hours: 15,minutes: 25,weeks:0 ),
                        ClockViewList1(title : ' 직행       15:35 → 15:50',hours: 15,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       15:45 → 16:00',hours: 15,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 직행       15:55 → 16:10',hours: 15,minutes: 55,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:05 → 16:20',hours: 16,minutes: 05,weeks:0 ),
                        ClockViewList1(title : ' 순환       16:15 → 16:30',hours: 16,minutes: 15,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:25 → 16:40',hours: 16,minutes: 25,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:35 → 16:50',hours: 16,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       16:45 → 17:00',hours: 16,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:55 → 17:10',hours: 16,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       17:05 → 17:20',hours: 17,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       17:15 → 17:30',hours: 17,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       17:25 → 17:40',hours: 17,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       17:35 → 17:50',hours: 17,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       17:45 → 18:00',hours: 17,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 직행       17:55 → 18:10',hours: 17,minutes: 55,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:05 → 18:20',hours: 18,minutes: 05,weeks:0 ),
                        ClockViewList1(title : ' 순환       18:15 → 18:30',hours: 18,minutes: 15,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:25 → 18:40',hours: 18,minutes: 25,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:35 → 18:50',hours: 18,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       18:45 → 19:00',hours: 18,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 순환       19:15 → 19:30',hours: 19,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 순환       19:45 → 20:00',hours: 19,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 순환       20:15 → 20:30',hours: 19,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 순환       20:45 → 21:00',hours: 19,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 순환       21:15 → 21:30',hours: 19,minutes: 15,weeks: 0)
                      ],
                    )//평일
                  ])
          )
      );
    } else {
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("창의관 → 한대앞",
                    style:TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )

                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    //주말
                    ListView(
                      children: [
                        ClockViewList1(title : ' 순환       07:45 → 08:00',hours: 07,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       07:55 → 08:10',hours: 07,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       08:05 → 08:20',hours: 08,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       08:15 → 08:30',hours: 08,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       08:25 → 08:40',hours: 08,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       08:35 → 08:50',hours: 08,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       08:45 → 09:00',hours: 08,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       08:55 → 09:10',hours: 08,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       09:05 → 09:20',hours: 09,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       09:15 → 09:30',hours: 09,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       09:25 → 09:40',hours: 09,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       09:35 → 09:50',hours: 09,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       09:45 → 10:00',hours: 09,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       09:55 → 10:10',hours: 09,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       10:05 → 10:20',hours: 10,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       10:15 → 10:30',hours: 10,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       10:25 → 10:40',hours: 10,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       10:35 → 10:50',hours: 10,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       10:45 → 11:00',hours: 10,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       10:55 → 11:10',hours: 10,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       11:05 → 11:20',hours: 11,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       11:15 → 11:30',hours: 11,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       11:25 → 11:40',hours: 11,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       11:35 → 11:50',hours: 11,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       11:45 → 12:00',hours: 11,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       11:55 → 12:10',hours: 11,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       12:05 → 12:20',hours: 12,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       12:15 → 12:30',hours: 12,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       12:25 → 12:40',hours: 12,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       12:35 → 12:50',hours: 12,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       12:45 → 13:00',hours: 12,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       12:55 → 13:10',hours: 12,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       13:05 → 13:20',hours: 13,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       13:15 → 13:30',hours: 13,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       13:25 → 13:40',hours: 13,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       13:35 → 13:50',hours: 13,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       13:45 → 14:00',hours: 13,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       13:55 → 14:10',hours: 13,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       14:05 → 14:20',hours: 14,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       14:15 → 14:30',hours: 14,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       14:25 → 14:40',hours: 14,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       14:35 → 14:50',hours: 14,minutes: 35,weeks: 0),
                        ClockViewList1(title : ' 순환       14:45 → 15:00',hours: 14,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 직행       14:55 → 15:10',hours: 14,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       15:05 → 15:20',hours: 15,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       15:15 → 15:30',hours: 15,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       15:25 → 15:40',hours: 15,minutes: 25,weeks:0 ),
                        ClockViewList1(title : ' 직행       15:35 → 15:50',hours: 15,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       15:45 → 16:00',hours: 15,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 직행       15:55 → 16:10',hours: 15,minutes: 55,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:05 → 16:20',hours: 16,minutes: 05,weeks:0 ),
                        ClockViewList1(title : ' 순환       16:15 → 16:30',hours: 16,minutes: 15,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:25 → 16:40',hours: 16,minutes: 25,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:35 → 16:50',hours: 16,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       16:45 → 17:00',hours: 16,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:55 → 17:10',hours: 16,minutes: 55,weeks: 0),
                        ClockViewList1(title : ' 직행       17:05 → 17:20',hours: 17,minutes: 05,weeks: 0),
                        ClockViewList1(title : ' 순환       17:15 → 17:30',hours: 17,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 직행       17:25 → 17:40',hours: 17,minutes: 25,weeks: 0),
                        ClockViewList1(title : ' 직행       17:35 → 17:50',hours: 17,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       17:45 → 18:00',hours: 17,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 직행       17:55 → 18:10',hours: 17,minutes: 55,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:05 → 18:20',hours: 18,minutes: 05,weeks:0 ),
                        ClockViewList1(title : ' 순환       18:15 → 18:30',hours: 18,minutes: 15,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:25 → 18:40',hours: 18,minutes: 25,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:35 → 18:50',hours: 18,minutes: 35,weeks:0 ),
                        ClockViewList1(title : ' 순환       18:45 → 19:00',hours: 18,minutes: 45,weeks:0 ),
                        ClockViewList1(title : ' 순환       19:15 → 19:30',hours: 19,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 순환       19:45 → 20:00',hours: 19,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 순환       20:15 → 20:30',hours: 19,minutes: 15,weeks: 0),
                        ClockViewList1(title : ' 순환       20:45 → 21:00',hours: 19,minutes: 45,weeks: 0),
                        ClockViewList1(title : ' 순환       21:15 → 21:30',hours: 19,minutes: 15,weeks: 0)
                      ],
                    ),//평일
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList1(title : ' 순환       09:45 → 10:00',hours: 09,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       10:45 → 11:00',hours: 10,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       11:45 → 12:00',hours: 11,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       12:45 → 13:00',hours: 12,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       13:45 → 14:00',hours: 13,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       14:45 → 15:00',hours: 14,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       15:45 → 16:00',hours: 15,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       16:45 → 17:00',hours: 16,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       17:45 → 18:00',hours: 17,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       18:45 → 19:00',hours: 18,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       19:45 → 20:00',hours: 19,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       20:45 → 21:00',hours: 20,minutes: 45,weeks: 1),
                        ClockViewList1(title : ' 순환       21:45 → 22:00',hours: 21,minutes: 45,weeks: 1)
                      ],
                    )
                  ])
          )
      );

    }
  }
}
class Shuttle_2 extends StatelessWidget {  //창의 > 예술
  static const clear_blue = const Color(0xa31959e6);
  bool visible = true;


  @override
  Widget build(BuildContext context) {
    if(n_week == 6 || n_week == 7){
      print('' + n_week.toString());
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("창의인재원 → 예술인APT",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList2(title : ' 순환       08:45 → 09:05',hours: 08,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       09:45 → 10:05',hours: 09,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       10:45 → 11:05',hours: 10,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       11:45 → 12:05',hours: 11,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       12:45 → 13:05',hours: 12,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       13:45 → 14:05',hours: 13,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       14:45 → 15:05',hours: 14,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       15:45 → 16:05',hours: 15,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       16:45 → 17:05',hours: 16,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       17:45 → 18:05',hours: 17,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       18:45 → 19:05',hours: 18,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       19:45 → 20:05',hours: 19,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       20:45 → 21:05',hours: 20,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       21:45 → 22:05',hours: 21,minutes: 45,weeks: 1)
                      ],
                    ),//주말
                    ListView(
                      children: [
                        ClockViewList2(title : ' 순환       07:45 → 08:00',hours: 07,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       08:15 → 08:30',hours: 08,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       08:45 → 09:00',hours: 08,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       09:15 → 09:30',hours: 09,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       09:45 → 10:00',hours: 09,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       10:15 → 10:30',hours: 10,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       10:45 → 11:00',hours: 10,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       11:15 → 11:30',hours: 11,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       11:45 → 12:00',hours: 11,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       12:15 → 12:30',hours: 12,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       12:45 → 13:00',hours: 12,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       13:15 → 13:30',hours: 13,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       13:45 → 14:00',hours: 13,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       14:15 → 14:30',hours: 14,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       14:45 → 15:00',hours: 14,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       15:15 → 15:30',hours: 15,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       15:45 → 16:00',hours: 15,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       16:15 → 16:30',hours: 16,minutes: 15,weeks:0 ),
                        ClockViewList2(title : ' 순환       16:45 → 17:00',hours: 16,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       17:15 → 17:30',hours: 17,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       17:45 → 18:00',hours: 17,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       18:15 → 18:30',hours: 18,minutes: 15,weeks:0 ),
                        ClockViewList2(title : ' 순환       18:45 → 19:00',hours: 18,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       19:15 → 19:30',hours: 19,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       19:45 → 20:00',hours: 19,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       20:15 → 20:30',hours: 20,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       20:45 → 21:00',hours: 20,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       21:15 → 21:30',hours: 21,minutes: 15,weeks: 0)
                      ],
                    )//평일
                  ])
          )
      );
    } else {
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("창의인재원 → 예술인",
                    style:TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )

                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    //주말
                   //주말
                    ListView(
                      children: [
                        ClockViewList2(title : ' 순환       07:45 → 08:00',hours: 07,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       08:15 → 08:30',hours: 08,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       08:45 → 09:00',hours: 08,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       09:15 → 09:30',hours: 09,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       09:45 → 10:00',hours: 09,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       10:15 → 10:30',hours: 10,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       10:45 → 11:00',hours: 10,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       11:15 → 11:30',hours: 11,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       11:45 → 12:00',hours: 11,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       12:15 → 12:30',hours: 12,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       12:45 → 13:00',hours: 12,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       13:15 → 13:30',hours: 13,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       13:45 → 14:00',hours: 13,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       14:15 → 14:30',hours: 14,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       14:45 → 15:00',hours: 14,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       15:15 → 15:30',hours: 15,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       15:45 → 16:00',hours: 15,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       16:15 → 16:30',hours: 16,minutes: 15,weeks:0 ),
                        ClockViewList2(title : ' 순환       16:45 → 17:00',hours: 16,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       17:15 → 17:30',hours: 17,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       17:45 → 18:00',hours: 17,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       18:15 → 18:30',hours: 18,minutes: 15,weeks:0 ),
                        ClockViewList2(title : ' 순환       18:45 → 19:00',hours: 18,minutes: 45,weeks:0 ),
                        ClockViewList2(title : ' 순환       19:15 → 19:30',hours: 19,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       19:45 → 20:00',hours: 19,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       20:15 → 20:30',hours: 20,minutes: 15,weeks: 0),
                        ClockViewList2(title : ' 순환       20:45 → 21:00',hours: 20,minutes: 45,weeks: 0),
                        ClockViewList2(title : ' 순환       21:15 → 21:30',hours: 21,minutes: 15,weeks: 0)
                      ],
                    ),
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList2(title : ' 순환       08:45 → 09:05',hours: 08,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       09:45 → 10:05',hours: 09,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       10:45 → 11:05',hours: 10,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       11:45 → 12:05',hours: 11,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       12:45 → 13:05',hours: 12,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       13:45 → 14:05',hours: 13,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       14:45 → 15:05',hours: 14,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       15:45 → 16:05',hours: 15,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       16:45 → 17:05',hours: 16,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       17:45 → 18:05',hours: 17,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       18:45 → 19:05',hours: 18,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       19:45 → 20:05',hours: 19,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       20:45 → 21:05',hours: 20,minutes: 45,weeks: 1),
                        ClockViewList2(title : ' 순환       21:45 → 22:05',hours: 21,minutes: 45,weeks: 1)
                      ],
                    )//평일
                  ])
          )
      );

    }
  }
}
class Shuttle_3 extends StatelessWidget { //셔틀 > 한대
  static const clear_blue = const Color(0xa31959e6);
  bool visible = true;


  @override
  Widget build(BuildContext context) {
    if(n_week == 6 || n_week == 7){
      print('' + n_week.toString());
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("셔틀콕 → 한대앞역",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList1(title : ' 순환       08:50 → 09:05',hours: 08,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       09:50 → 10:05',hours: 09,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       10:50 → 11:05',hours: 10,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       11:50 → 12:05',hours: 11,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       12:50 → 13:05',hours: 12,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       13:50 → 14:05',hours: 13,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       14:50 → 15:05',hours: 14,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       15:50 → 16:05',hours: 15,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       16:50 → 17:05',hours: 16,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       17:50 → 18:05',hours: 17,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       18:50 → 19:05',hours: 18,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       19:50 → 20:05',hours: 19,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       20:50 → 21:05',hours: 20,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       21:50 → 22:05',hours: 21,minutes: 50,weeks: 1)
                      ],
                    ),//주말
                    ListView(
                      children: [
                        ClockViewList1(title : ' 순환       07:50 → 08:00',hours: 07,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       08:00 → 08:10',hours: 08,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       08:10 → 08:20',hours: 08,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       08:20 → 08:30',hours: 08,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       08:30 → 08:40',hours: 08,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       08:40 → 08:50',hours: 08,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       08:50 → 09:00',hours: 08,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       09:00 → 09:10',hours: 09,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       09:10 → 09:20',hours: 09,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       09:20 → 09:30',hours: 09,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       09:30 → 09:40',hours: 09,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       09:40 → 09:50',hours: 09,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       09:50 → 10:00',hours: 09,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       10:00 → 10:10',hours: 10,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       10:10 → 10:20',hours: 10,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       10:20 → 10:30',hours: 10,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       10:30 → 10:40',hours: 10,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       10:40 → 10:50',hours: 10,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       10:50 → 11:00',hours: 10,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       11:00 → 11:10',hours: 11,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       11:10 → 11:20',hours: 11,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       11:20 → 11:30',hours: 11,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       11:30 → 11:40',hours: 11,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       11:40 → 11:50',hours: 11,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       11:50 → 12:00',hours: 11,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       12:00 → 12:10',hours: 12,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       12:10 → 12:20',hours: 12,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       12:20 → 12:30',hours: 12,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       12:30 → 12:40',hours: 12,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       12:40 → 12:50',hours: 12,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       12:50 → 13:00',hours: 12,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       13:00 → 13:10',hours: 13,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       13:10 → 13:20',hours: 13,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       13:20 → 13:30',hours: 13,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       13:30 → 13:40',hours: 13,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       13:40 → 13:50',hours: 13,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       13:50 → 14:00',hours: 13,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       14:00 → 14:10',hours: 14,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       14:10 → 14:20',hours: 14,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       14:20 → 14:30',hours: 14,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       14:30 → 14:40',hours: 14,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       14:40 → 14:50',hours: 14,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       14:50 → 15:00',hours: 14,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       15:00 → 15:10',hours: 15,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       15:10 → 15:20',hours: 15,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       15:20 → 15:30',hours: 15,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       15:30 → 15:40',hours: 15,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       15:40 → 15:50',hours: 15,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       15:50 → 16:00',hours: 15,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       16:00 → 16:10',hours: 16,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       16:10 → 16:20',hours: 16,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       16:20 → 16:30',hours: 16,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       16:30 → 16:40',hours: 16,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       16:40 → 16:50',hours: 16,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       16:50 → 17:00',hours: 16,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       17:00 → 17:10',hours: 17,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       17:10 → 17:20',hours: 17,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       17:20 → 17:30',hours: 17,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       17:30 → 17:40',hours: 17,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       17:40 → 17:50',hours: 17,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       17:50 → 18:00',hours: 17,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       18:00 → 18:10',hours: 18,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       18:10 → 18:20',hours: 18,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       18:20 → 18:30',hours: 18,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       18:30 → 18:40',hours: 18,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       18:40 → 18:50',hours: 18,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       18:50 → 19:00',hours: 18,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       19:20 → 19:30',hours: 19,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       19:50 → 20:00',hours: 19,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       20:20 → 20:30',hours: 20,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       20:50 → 21:00',hours: 20,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       21:20 → 21:30',hours: 21,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       21:50 → 21:30',hours: 21,minutes: 50,weeks: 0)
                      ],
                    )//평일
                  ])
          )
      );
    } else {
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("셔틀콕 → 한대앞역",
                    style:TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )

                    ]
                ),
              ),
              body: TabBarView(
                  children: [

                    ListView(
                      children: [
                        ClockViewList1(title : ' 순환       07:50 → 08:00',hours: 07,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       08:00 → 08:10',hours: 08,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       08:10 → 08:20',hours: 08,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       08:20 → 08:30',hours: 08,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       08:30 → 08:40',hours: 08,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       08:40 → 08:50',hours: 08,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       08:50 → 09:00',hours: 08,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       09:00 → 09:10',hours: 09,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       09:10 → 09:20',hours: 09,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       09:20 → 09:30',hours: 09,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       09:30 → 09:40',hours: 09,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       09:40 → 09:50',hours: 09,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       09:50 → 10:00',hours: 09,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       10:00 → 10:10',hours: 10,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       10:10 → 10:20',hours: 10,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       10:20 → 10:30',hours: 10,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       10:30 → 10:40',hours: 10,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       10:40 → 10:50',hours: 10,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       10:50 → 11:00',hours: 10,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       11:00 → 11:10',hours: 11,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       11:10 → 11:20',hours: 11,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       11:20 → 11:30',hours: 11,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       11:30 → 11:40',hours: 11,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       11:40 → 11:50',hours: 11,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       11:50 → 12:00',hours: 11,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       12:00 → 12:10',hours: 12,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       12:10 → 12:20',hours: 12,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       12:20 → 12:30',hours: 12,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       12:30 → 12:40',hours: 12,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       12:40 → 12:50',hours: 12,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       12:50 → 13:00',hours: 12,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       13:00 → 13:10',hours: 13,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       13:10 → 13:20',hours: 13,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       13:20 → 13:30',hours: 13,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       13:30 → 13:40',hours: 13,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       13:40 → 13:50',hours: 13,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       13:50 → 14:00',hours: 13,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       14:00 → 14:10',hours: 14,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       14:10 → 14:20',hours: 14,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       14:20 → 14:30',hours: 14,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       14:30 → 14:40',hours: 14,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       14:40 → 14:50',hours: 14,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 순환       14:50 → 15:00',hours: 14,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 직행       15:00 → 15:10',hours: 15,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       15:10 → 15:20',hours: 15,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       15:20 → 15:30',hours: 15,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       15:30 → 15:40',hours: 15,minutes: 30,weeks:0 ),
                        ClockViewList1(title : ' 직행       15:40 → 15:50',hours: 15,minutes: 40,weeks:0 ),
                        ClockViewList1(title : ' 순환       15:50 → 16:00',hours: 15,minutes: 50,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:00 → 16:10',hours: 16,minutes: 00,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:10 → 16:20',hours: 16,minutes: 10,weeks:0 ),
                        ClockViewList1(title : ' 순환       16:20 → 16:30',hours: 16,minutes: 20,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:30 → 16:40',hours: 16,minutes: 30,weeks:0 ),
                        ClockViewList1(title : ' 직행       16:40 → 16:50',hours: 16,minutes: 40,weeks:0 ),
                        ClockViewList1(title : ' 순환       16:50 → 17:00',hours: 16,minutes: 50,weeks:0 ),
                        ClockViewList1(title : ' 직행       17:00 → 17:10',hours: 17,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       17:10 → 17:20',hours: 17,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 순환       17:20 → 17:30',hours: 17,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 직행       17:30 → 17:40',hours: 17,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       17:40 → 17:50',hours: 17,minutes: 40,weeks:0 ),
                        ClockViewList1(title : ' 순환       17:50 → 18:00',hours: 17,minutes: 50,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:00 → 18:10',hours: 18,minutes: 00,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:10 → 18:20',hours: 18,minutes: 10,weeks:0 ),
                        ClockViewList1(title : ' 순환       18:20 → 18:30',hours: 18,minutes: 20,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:30 → 18:40',hours: 18,minutes: 30,weeks:0 ),
                        ClockViewList1(title : ' 직행       18:40 → 18:50',hours: 18,minutes: 40,weeks:0 ),
                        ClockViewList1(title : ' 순환       18:50 → 19:00',hours: 18,minutes: 50,weeks:0 ),
                        ClockViewList1(title : ' 순환       19:20 → 19:30',hours: 19,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       19:50 → 20:00',hours: 19,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       20:20 → 20:30',hours: 20,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       20:50 → 21:00',hours: 20,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       21:20 → 21:30',hours: 21,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       21:50 → 21:30',hours: 21,minutes: 50,weeks: 0)
                      ],
                    ),//평일
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList1(title : ' 순환       08:50 → 09:05',hours: 08,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       09:50 → 10:05',hours: 09,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       10:50 → 11:05',hours: 10,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       11:50 → 12:05',hours: 11,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       12:50 → 13:05',hours: 12,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       13:50 → 14:05',hours: 13,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       14:50 → 15:05',hours: 14,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       15:50 → 16:05',hours: 15,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       16:50 → 17:05',hours: 16,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       17:50 → 18:05',hours: 17,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       18:50 → 19:05',hours: 18,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       19:50 → 20:05',hours: 19,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       20:50 → 21:05',hours: 20,minutes: 50,weeks: 1),
                        ClockViewList1(title : ' 순환       21:50 → 22:05',hours: 21,minutes: 50,weeks: 1)
                      ],
                    ),//주말
                  ])
          )
      );

    }
  }
}
class Shuttle_4 extends StatelessWidget { //셔틀 > 한대
  static const clear_blue = const Color(0xa31959e6);
  bool visible = true;


  @override
  Widget build(BuildContext context) {
    if(n_week == 6 || n_week == 7){
      print('' + n_week.toString());
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("셔틀콕 → 예술인",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [//Visibility(child: child),
                        ClockViewList2(title : ' 순환       08:50 → 09:05',hours: 08,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       09:50 → 10:05',hours: 09,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       10:50 → 11:05',hours: 10,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       11:50 → 12:05',hours: 11,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       12:50 → 13:05',hours: 12,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       13:50 → 14:05',hours: 13,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       14:50 → 15:05',hours: 14,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       15:50 → 16:05',hours: 15,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       16:50 → 17:05',hours: 16,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       17:50 → 18:05',hours: 17,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       18:50 → 19:05',hours: 18,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       19:50 → 20:05',hours: 19,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       20:50 → 21:05',hours: 20,minutes: 50,weeks: 1),
                        ClockViewList2(title : ' 순환       21:50 → 22:05',hours: 21,minutes: 50,weeks: 1)
                      ],
                    ),//주말
                    ListView(
                      children: [
                        ClockViewList2(title : ' 순환       07:50 → 08:00',hours: 07,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       08:20 → 08:30',hours: 08,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       08:50 → 09:00',hours: 08,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       09:20 → 09:30',hours: 09,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       09:50 → 10:00',hours: 09,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       10:20 → 10:30',hours: 10,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       10:50 → 11:00',hours: 10,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       11:20 → 11:30',hours: 11,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       11:50 → 12:00',hours: 11,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       12:20 → 12:30',hours: 12,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       12:50 → 13:00',hours: 12,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       13:20 → 13:30',hours: 13,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       13:50 → 14:00',hours: 13,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       14:20 → 14:30',hours: 14,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       14:50 → 15:00',hours: 14,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       15:20 → 15:30',hours: 15,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       15:50 → 16:00',hours: 15,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       16:20 → 16:30',hours: 16,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       16:50 → 17:00',hours: 16,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       17:20 → 17:30',hours: 17,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       17:50 → 18:00',hours: 17,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       18:20 → 18:30',hours: 18,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       18:50 → 19:00',hours: 18,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       19:20 → 19:30',hours: 19,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       19:50 → 20:00',hours: 19,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       20:20 → 20:30',hours: 20,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       20:50 → 21:00',hours: 20,minutes: 50,weeks: 0),
                        ClockViewList2(title : ' 순환       21:20 → 21:30',hours: 21,minutes: 20,weeks: 0),
                        ClockViewList2(title : ' 순환       21:50 → 21:30',hours: 21,minutes: 50,weeks: 0)
                      ],
                    )//평일
                  ])
          )
      );
    } else {
      return DefaultTabController(length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("셔틀콕 → 예술인",
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom: TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0, right: 8.0),
                    tabs: [
                      Tab(
                          child: Text('평일',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ), Tab(
                          child: Text('주말',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )

                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [
                        ClockViewList2(title: ' 순환       07:50 → 08:00',
                            hours: 07,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       08:20 → 08:30',
                            hours: 08,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       08:50 → 09:00',
                            hours: 08,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       09:20 → 09:30',
                            hours: 09,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       09:50 → 10:00',
                            hours: 09,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       10:20 → 10:30',
                            hours: 10,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       10:50 → 11:00',
                            hours: 10,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       11:20 → 11:30',
                            hours: 11,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       11:50 → 12:00',
                            hours: 11,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       12:20 → 12:30',
                            hours: 12,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       12:50 → 13:00',
                            hours: 12,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       13:20 → 13:30',
                            hours: 13,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       13:50 → 14:00',
                            hours: 13,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       14:20 → 14:30',
                            hours: 14,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       14:50 → 15:00',
                            hours: 14,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       15:20 → 15:30',
                            hours: 15,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       15:50 → 16:00',
                            hours: 15,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       16:20 → 16:30',
                            hours: 16,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       16:50 → 17:00',
                            hours: 16,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       17:20 → 17:30',
                            hours: 17,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       17:50 → 18:00',
                            hours: 17,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       18:20 → 18:30',
                            hours: 18,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       18:50 → 19:00',
                            hours: 18,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       19:20 → 19:30',
                            hours: 19,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       19:50 → 20:00',
                            hours: 19,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       20:20 → 20:30',
                            hours: 20,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       20:50 → 21:00',
                            hours: 20,
                            minutes: 50,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       21:20 → 21:30',
                            hours: 21,
                            minutes: 20,
                            weeks: 0),
                        ClockViewList2(title: ' 순환       21:50 → 21:30',
                            hours: 21,
                            minutes: 50,
                            weeks: 0)
                      ],
                    ),
                    ListView(
                      children: [ //Visibility(child: child),
                        ClockViewList2(title: ' 순환       08:50 → 09:05',
                            hours: 08,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       09:50 → 10:05',
                            hours: 09,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       10:50 → 11:05',
                            hours: 10,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       11:50 → 12:05',
                            hours: 11,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       12:50 → 13:05',
                            hours: 12,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       13:50 → 14:05',
                            hours: 13,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       14:50 → 15:05',
                            hours: 14,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       15:50 → 16:05',
                            hours: 15,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       16:50 → 17:05',
                            hours: 16,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       17:50 → 18:05',
                            hours: 17,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       18:50 → 19:05',
                            hours: 18,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       19:50 → 20:05',
                            hours: 19,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       20:50 → 21:05',
                            hours: 20,
                            minutes: 50,
                            weeks: 1),
                        ClockViewList2(title: ' 순환       21:50 → 22:05',
                            hours: 21,
                            minutes: 50,
                            weeks: 1)
                      ],
                    ), //주말
                  ]
              )
          )
      );
    }
  }
}
class Shuttle_5 extends StatelessWidget { //한대앞
  static const clear_blue = const Color(0xa31959e6);
  bool visible = true;


  @override
  Widget build(BuildContext context) {
    if(n_week == 6 || n_week == 7){
      print('' + n_week.toString());
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("한대앞역",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [//Visibility(child: child),

                        ClockViewList1(title : ' 순환       09:00 → 10:15',hours: 09,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       10:00 → 11:15',hours: 10,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       11:00 → 12:15',hours: 11,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       12:00 → 13:15',hours: 12,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       13:00 → 14:15',hours: 13,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       14:00 → 15:15',hours: 14,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       15:00 → 16:15',hours: 15,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       16:00 → 17:15',hours: 16,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       17:00 → 18:15',hours: 17,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       18:00 → 19:15',hours: 18,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       19:00 → 20:15',hours: 19,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       20:00 → 21:15',hours: 20,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       21:00 → 22:15',hours: 21,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       22:00 → 22:15',hours: 22,minutes: 00,weeks: 1),
                      ],
                    ),//주말
                    ListView(
                      children: [
                        ClockViewList1(title : ' 순환       08:00 → 08:15',hours: 08,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 직행       08:10 → 08:20',hours: 08,minutes: 10,weeks: 1),
                        ClockViewList1(title : ' 직행       08:20 → 08:30',hours: 08,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       08:30 → 08:45',hours: 08,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       08:40 → 08:50',hours: 08,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       08:50 → 09:00',hours: 08,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       09:00 → 09:15',hours: 09,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       09:10 → 09:20',hours: 09,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       09:20 → 09:30',hours: 09,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       09:30 → 09:45',hours: 09,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       09:40 → 09:50',hours: 09,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       09:50 → 10:00',hours: 09,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       10:00 → 10:15',hours: 10,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       10:10 → 10:20',hours: 10,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       10:20 → 10:30',hours: 10,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       10:30 → 10:45',hours: 10,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       10:40 → 10:50',hours: 10,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       10:50 → 11:00',hours: 10,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       11:00 → 11:15',hours: 11,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       11:10 → 11:20',hours: 11,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       11:20 → 11:30',hours: 11,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       11:30 → 11:45',hours: 11,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       11:40 → 11:50',hours: 11,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       11:50 → 12:00',hours: 11,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       12:00 → 12:15',hours: 12,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       12:10 → 12:20',hours: 12,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       12:20 → 12:30',hours: 12,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       12:30 → 12:45',hours: 12,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       12:40 → 12:50',hours: 12,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       12:50 → 13:00',hours: 12,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       13:00 → 13:15',hours: 13,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       13:10 → 13:20',hours: 13,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       13:20 → 13:30',hours: 13,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       13:30 → 13:45',hours: 13,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       13:40 → 13:50',hours: 13,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       13:50 → 14:00',hours: 13,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       14:00 → 14:15',hours: 14,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       14:10 → 14:20',hours: 14,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       14:20 → 14:30',hours: 14,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       14:30 → 14:45',hours: 14,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       14:40 → 14:50',hours: 14,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       14:50 → 15:00',hours: 14,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       15:00 → 15:15',hours: 15,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       15:10 → 15:20',hours: 15,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       15:20 → 15:30',hours: 15,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       15:30 → 15:45',hours: 15,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       15:40 → 15:50',hours: 15,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       15:50 → 16:00',hours: 15,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       16:00 → 16:15',hours: 16,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       16:10 → 16:20',hours: 16,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       16:20 → 16:30',hours: 16,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       16:30 → 16:45',hours: 16,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       16:40 → 16:50',hours: 16,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       16:50 → 17:00',hours: 16,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       17:00 → 17:15',hours: 17,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       17:10 → 17:20',hours: 17,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       17:20 → 17:30',hours: 17,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       17:30 → 17:45',hours: 17,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       17:40 → 17:50',hours: 17,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       17:50 → 18:00',hours: 17,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       18:00 → 18:15',hours: 18,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       18:10 → 18:20',hours: 18,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       18:20 → 18:30',hours: 18,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       18:30 → 18:45',hours: 18,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       18:40 → 18:50',hours: 18,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       18:50 → 19:00',hours: 18,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       19:00 → 19:35',hours: 19,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 순환       19:30 → 19:45',hours: 19,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 순환       20:00 → 20:15',hours: 20,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 순환       20:30 → 20:45',hours: 20,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 순환       21:00 → 21:15',hours: 21,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 순환       21:30 → 21:45',hours: 21,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 순환       22:00 → 22:15',hours: 22,minutes: 00,weeks: 0)
                      ],
                    )//평일
                  ])
          )
      );
    } else {
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("한대앞역",
                    style:TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )

                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [
                        ClockViewList1(title : ' 순환       08:00 → 08:15',hours: 08,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 직행       08:10 → 08:20',hours: 08,minutes: 10,weeks: 1),
                        ClockViewList1(title : ' 직행       08:20 → 08:30',hours: 08,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       08:30 → 08:45',hours: 08,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       08:40 → 08:50',hours: 08,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       08:50 → 09:00',hours: 08,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       09:00 → 09:15',hours: 09,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       09:10 → 09:20',hours: 09,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       09:20 → 09:30',hours: 09,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       09:30 → 09:45',hours: 09,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       09:40 → 09:50',hours: 09,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       09:50 → 10:00',hours: 09,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       10:00 → 10:15',hours: 10,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       10:10 → 10:20',hours: 10,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       10:20 → 10:30',hours: 10,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       10:30 → 10:45',hours: 10,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       10:40 → 10:50',hours: 10,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       10:50 → 11:00',hours: 10,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       11:00 → 11:15',hours: 11,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       11:10 → 11:20',hours: 11,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       11:20 → 11:30',hours: 11,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       11:30 → 11:45',hours: 11,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       11:40 → 11:50',hours: 11,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       11:50 → 12:00',hours: 11,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       12:00 → 12:15',hours: 12,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       12:10 → 12:20',hours: 12,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       12:20 → 12:30',hours: 12,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       12:30 → 12:45',hours: 12,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       12:40 → 12:50',hours: 12,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       12:50 → 13:00',hours: 12,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       13:00 → 13:15',hours: 13,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       13:10 → 13:20',hours: 13,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       13:20 → 13:30',hours: 13,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       13:30 → 13:45',hours: 13,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       13:40 → 13:50',hours: 13,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       13:50 → 14:00',hours: 13,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       14:00 → 14:15',hours: 14,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       14:10 → 14:20',hours: 14,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       14:20 → 14:30',hours: 14,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       14:30 → 14:45',hours: 14,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       14:40 → 14:50',hours: 14,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       14:50 → 15:00',hours: 14,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       15:00 → 15:15',hours: 15,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       15:10 → 15:20',hours: 15,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       15:20 → 15:30',hours: 15,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       15:30 → 15:45',hours: 15,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       15:40 → 15:50',hours: 15,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       15:50 → 16:00',hours: 15,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       16:00 → 16:15',hours: 16,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       16:10 → 16:20',hours: 16,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       16:20 → 16:30',hours: 16,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       16:30 → 16:45',hours: 16,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       16:40 → 16:50',hours: 16,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       16:50 → 17:00',hours: 16,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       17:00 → 17:15',hours: 17,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       17:10 → 17:20',hours: 17,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       17:20 → 17:30',hours: 17,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       17:30 → 17:45',hours: 17,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       17:40 → 17:50',hours: 17,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       17:50 → 18:00',hours: 17,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       18:00 → 18:15',hours: 18,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 직행       18:10 → 18:20',hours: 18,minutes: 10,weeks: 0),
                        ClockViewList1(title : ' 직행       18:20 → 18:30',hours: 18,minutes: 20,weeks: 0),
                        ClockViewList1(title : ' 순환       18:30 → 18:45',hours: 18,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 직행       18:40 → 18:50',hours: 18,minutes: 40,weeks: 0),
                        ClockViewList1(title : ' 직행       18:50 → 19:00',hours: 18,minutes: 50,weeks: 0),
                        ClockViewList1(title : ' 순환       19:00 → 19:35',hours: 19,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 순환       19:30 → 19:45',hours: 19,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 순환       20:00 → 20:15',hours: 20,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 순환       20:30 → 20:45',hours: 20,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 순환       21:00 → 21:15',hours: 21,minutes: 00,weeks: 0),
                        ClockViewList1(title : ' 순환       21:30 → 21:45',hours: 21,minutes: 30,weeks: 0),
                        ClockViewList1(title : ' 순환       22:00 → 22:15',hours: 22,minutes: 00,weeks: 0)
                      ],
                    ),
                    ListView(
                      children: [//Visibility(child: child),

                        ClockViewList1(title : ' 순환       09:00 → 10:15',hours: 09,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       10:00 → 11:15',hours: 10,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       11:00 → 12:15',hours: 11,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       12:00 → 13:15',hours: 12,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       13:00 → 14:15',hours: 13,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       14:00 → 15:15',hours: 14,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       15:00 → 16:15',hours: 15,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       16:00 → 17:15',hours: 16,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       17:00 → 18:15',hours: 17,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       18:00 → 19:15',hours: 18,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       19:00 → 20:15',hours: 19,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       20:00 → 21:15',hours: 20,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       21:00 → 22:15',hours: 21,minutes: 00,weeks: 1),
                        ClockViewList1(title : ' 순환       22:00 → 22:15',hours: 22,minutes: 00,weeks: 1),
                      ],
                    ),//주말
                    //평일
                  ])
          )
      );
    }
  }
}
class Shuttle_6 extends StatelessWidget { //예술인
  static const clear_blue = const Color(0xa31959e6);
  bool visible = true;


  @override
  Widget build(BuildContext context) {
    if(n_week == 6 || n_week == 7){
      print('' + n_week.toString());
      return DefaultTabController(length: 2,
          child : Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("셔틀콕 → 예술인",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom:  TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0,right: 8.0),
                    tabs: [
                      Tab(
                          child:Text('주말',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ),
                      Tab(
                          child:Text('평일',
                            style: TextStyle(fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    ListView(
                      children: [//Visibility(child: child),

                        ClockViewList2(title : ' 순환       09:05 → 09:15',hours: 09,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       10:05 → 10:15',hours: 10,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       11:05 → 11:15',hours: 11,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       12:05 → 12:15',hours: 12,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       13:05 → 13:15',hours: 13,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       14:05 → 14:15',hours: 14,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       15:05 → 15:15',hours: 15,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       16:05 → 16:15',hours: 16,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       17:05 → 17:15',hours: 17,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       18:05 → 18:15',hours: 18,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       19:05 → 19:15',hours: 19,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       20:05 → 20:15',hours: 20,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       21:05 → 21:15',hours: 21,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       22:05 → 22:15',hours: 22,minutes: 05,weeks: 1)
                      ],
                    ),//주말
                    ListView(
                      children: [
                        ClockViewList2(title : ' 순환       08:05 → 08:15',hours: 08,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       08:35 → 08:45',hours: 08,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       09:05 → 09:15',hours: 09,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       09:35 → 09:45',hours: 09,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       10:05 → 10:15',hours: 10,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       10:35 → 10:45',hours: 10,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       11:05 → 11:15',hours: 11,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       11:35 → 11:45',hours: 11,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       12:05 → 12:15',hours: 12,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       12:35 → 12:45',hours: 12,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       13:05 → 13:15',hours: 13,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       13:35 → 13:45',hours: 13,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       14:05 → 14:15',hours: 14,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       14:35 → 14:45',hours: 14,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       15:05 → 15:15',hours: 15,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       15:35 → 15:45',hours: 15,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       16:05 → 16:15',hours: 16,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       16:35 → 16:45',hours: 16,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       17:05 → 17:15',hours: 17,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       17:35 → 17:45',hours: 17,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       18:05 → 18:15',hours: 18,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       18:35 → 18:45',hours: 18,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       19:05 → 19:15',hours: 19,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       19:35 → 19:45',hours: 19,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       20:05 → 20:15',hours: 20,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       20:35 → 20:45',hours: 20,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       21:05 → 21:15',hours: 21,minutes: 05,weeks: 0),
                        ClockViewList2(title : ' 순환       21:35 → 21:45',hours: 21,minutes: 35,weeks: 0),
                        ClockViewList2(title : ' 순환       22:05 → 22:15',hours: 22,minutes: 05,weeks: 0)
                      ],
                    )//평일
                  ])
          )
      );
    } else {
      return DefaultTabController(length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: clear_blue,
                title: Center(child: Text("셔틀콕 → 예술인",
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                        color: Colors.black),
                    textAlign: TextAlign.left),
                ),
                bottom: TabBar(
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.only(left: 8.0, right: 8.0),
                    tabs: [
                      Tab(
                          child: Text('평일',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      ), Tab(
                          child: Text('주말',
                            style: TextStyle(fontFamily: "GothicA1",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.black),
                          )
                      )

                    ]
                ),
              ),
              body: TabBarView(
                  children: [ListView(
                    children: [
                      ClockViewList2(title : ' 순환       08:05 → 08:15',hours: 08,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       08:35 → 08:45',hours: 08,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       09:05 → 09:15',hours: 09,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       09:35 → 09:45',hours: 09,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       10:05 → 10:15',hours: 10,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       10:35 → 10:45',hours: 10,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       11:05 → 11:15',hours: 11,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       11:35 → 11:45',hours: 11,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       12:05 → 12:15',hours: 12,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       12:35 → 12:45',hours: 12,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       13:05 → 13:15',hours: 13,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       13:35 → 13:45',hours: 13,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       14:05 → 14:15',hours: 14,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       14:35 → 14:45',hours: 14,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       15:05 → 15:15',hours: 15,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       15:35 → 15:45',hours: 15,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       16:05 → 16:15',hours: 16,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       16:35 → 16:45',hours: 16,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       17:05 → 17:15',hours: 17,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       17:35 → 17:45',hours: 17,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       18:05 → 18:15',hours: 18,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       18:35 → 18:45',hours: 18,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       19:05 → 19:15',hours: 19,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       19:35 → 19:45',hours: 19,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       20:05 → 20:15',hours: 20,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       20:35 → 20:45',hours: 20,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       21:05 → 21:15',hours: 21,minutes: 05,weeks: 0),
                      ClockViewList2(title : ' 순환       21:35 → 21:45',hours: 21,minutes: 35,weeks: 0),
                      ClockViewList2(title : ' 순환       22:05 → 22:15',hours: 22,minutes: 05,weeks: 0)
                    ],
                  ),//평일
                    ListView(
                      children: [//Visibility(child: child),

                        ClockViewList2(title : ' 순환       09:05 → 09:15',hours: 09,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       10:05 → 10:15',hours: 10,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       11:05 → 11:15',hours: 11,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       12:05 → 12:15',hours: 12,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       13:05 → 13:15',hours: 13,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       14:05 → 14:15',hours: 14,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       15:05 → 15:15',hours: 15,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       16:05 → 16:15',hours: 16,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       17:05 → 17:15',hours: 17,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       18:05 → 18:15',hours: 18,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       19:05 → 19:15',hours: 19,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       20:05 → 20:15',hours: 20,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       21:05 → 21:15',hours: 21,minutes: 05,weeks: 1),
                        ClockViewList2(title : ' 순환       22:05 → 22:15',hours: 22,minutes: 05,weeks: 1)
                      ],
                    ),//주말

                  ]
              )
          )
      );
    }
  }
}

