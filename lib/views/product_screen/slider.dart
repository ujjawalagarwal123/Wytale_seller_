import '../../const/const.dart';

class CategorySlider extends StatefulWidget {
  @override
  _CategorySliderState createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  double _currentSliderValue = 0;

  List<String> categoryOptions = [
    'Electronics',
    'Clothing',
    'Books',
    'Home & Kitchen',
    'Sports',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Category: ${categoryOptions[_currentSliderValue.toInt()]}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Slider(
              value: _currentSliderValue,
              min: 0,
              max: categoryOptions.length - 1.0,
              divisions: categoryOptions.length - 1,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

}