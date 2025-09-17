import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class SkillBarDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Proficiency',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32)),
            SizedBox(height: 30),
            buildAnimatedBar('Frontend/Design', 100,50),
            buildAnimatedBar('Figma/UI/UX', 80,50),
            buildAnimatedBar('Programming', 90,50),
        ], 
      ),
    );
  }
}

class SkillBarTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
          width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text('Proficiency',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32)),
            SizedBox(height: 30),
            buildAnimatedBar('Frontend/Design', 100,40),
            buildAnimatedBar('Figma/UI/UX', 80,40),
            buildAnimatedBar('Programming', 90,40),
          ],
        ),
      ),
    );
  }
}

class SkillBarMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Proficiency',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32)),
            SizedBox(height: 30),
            buildAnimatedBar('Frontend/Design', 100,30),
            buildAnimatedBar('Figma/UI/UX', 80,30),
            buildAnimatedBar('Programming', 90,30),
          ],
        ),
      ),
    );
  }
}


Widget buildAnimatedBar(String label, double targetPercent , double height) {
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 18,color: Colors.white)),
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetPercent),
          duration: Duration(seconds: 2),
          curve: Curves.easeOut,
          builder: (context, value, child) {
            final barColor = _getColorForPercent(value);

            return RoundedProgressBar(
              height: height,
              percent: value,
              style: RoundedProgressBarStyle(
                backgroundProgress: Colors.grey.withOpacity(0.15),
                colorProgress: barColor,
                borderWidth: 0,
                widthShadow: 0,
              ),
              margin: EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
            );
          },
        ),
      ],
    );
  }

  Color _getColorForPercent(double percent) {
    if (percent >= 85) return Colors.green;
    if (percent >= 70) return Colors.lightGreen;
    if (percent >= 50) return Colors.orange;
    return Colors.lightBlue;
  }