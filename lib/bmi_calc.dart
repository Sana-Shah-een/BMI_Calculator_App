import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.toggleTheme});

  final void Function() toggleTheme;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightftController = TextEditingController();
  final TextEditingController _heightinController = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    // Use theme background color
    final bgColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your BMI',
          style: TextStyle(
            // color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: widget.toggleTheme,
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _weightController,
                  decoration: InputDecoration(
                    label: Text('Enter your Weight (in kg)'),
                    prefixIcon: Icon(Icons.monitor_weight_outlined),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _heightftController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height (in ft)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _heightinController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height (in inches)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    var weight = _weightController.text.toString();
                    var heightFt = _heightftController.text.toString();
                    var heightIn = _heightinController.text.toString();

                    if (weight.isNotEmpty &&
                        heightFt.isNotEmpty &&
                        heightIn.isNotEmpty) {
                      var weightValue = double.tryParse(weight) ?? 0;
                      var heightFtValue = double.tryParse(heightFt) ?? 0;
                      var heightInValue = double.tryParse(heightIn) ?? 0;

                      var totalInches = (heightFtValue * 12) + heightInValue;
                      var heightInMeters = totalInches * 0.0254;
                      var bmi = weightValue / (heightInMeters * heightInMeters);

                      var msg = "";
                      // Color dialogColor;

                      if (bmi > 25) {
                        msg = "You are OverWeight!!!";
                        // dialogColor = Colors.orange.shade200;
                      } else if (bmi < 18) {
                        msg = "You are UnderWeight!!!";
                        // dialogColor = Colors.red.shade200;
                      } else {
                        msg = "You are Healthy";
                        // dialogColor = Colors.green.shade200;
                      }

                      setState(() {
                        result = "Your BMI is ${bmi.toStringAsFixed(2)}\n$msg";
                      });

                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text('Your BMI'),
                              content: Text(result),
                              // backgroundColor: dialogColor,
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please fill all the required blanks'),
                        ),
                      );
                    }
                  },
                  child: Text('Calculate BMI'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
