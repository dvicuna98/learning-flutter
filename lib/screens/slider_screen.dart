import 'package:flutter/material.dart';
import 'package:learning/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 5,
              max: 800,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled? (value) {
                _sliderValue = value;
                setState(() {});
              } : null,
          ),

          Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value??true;
                setState(() {});
              }
          ),

          Switch(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }
          ),

          SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('Activar slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }
          ),
          
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Activar slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value??true;
                setState(() {});
              }
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: const NetworkImage('https://static.wikia.nocookie.net/batman/images/9/9b/Bat_27.jpg/revision/latest/scale-to-width-down/817?cb=20130416234434&path-prefix=es') ,
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
