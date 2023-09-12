import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders y checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            onChanged: _checked
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
            activeColor: AppThemes.primaryColor,
            min: 50,
            max: 400,
            value: _sliderValue,
          ),
          CheckboxListTile(
              activeColor: AppThemes.primaryColor,
              title: const Text('Habilitar Slider'),
              value: _checked,
              onChanged: (value) {
                _checked = value ?? false;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              activeColor: AppThemes.primaryColor,
              title: const Text('Habilitar Slider'),
              value: _checked,
              onChanged: (value) => setState(() => _checked = value)),
          const AboutListTile(
            icon: Icon(Icons.info),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://picsum.photos/250'),
                width: _sliderValue,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
