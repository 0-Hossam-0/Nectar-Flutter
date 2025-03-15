import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';

class FiltersView extends StatefulWidget {
  const FiltersView({super.key});
  static const routeName = '/filtersView';

  @override
  State<FiltersView> createState() => _FiltersViewState();
}

class _FiltersViewState extends State<FiltersView> {
  bool eggs = true;
  bool noodles = false;
  bool chips = false;
  bool fastFood = false;

  bool ifad = true;
  bool cocola = false;
  bool kazi = false;
  bool individual = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
        ),
        title: Text(
          'Filters',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.circular(35),
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleFilter(title: 'Categories'),
              customTransform(title: 'Eggs', value: eggs),
              customTransform(title: 'Noodles & Pasta', value: noodles),
              customTransform(title: 'Chips & Crisps', value: chips),
              customTransform(title: 'Fast Food', value: fastFood),
              titleFilter(title: 'Brand'),
              customTransform(title: 'Individual Callection', value: individual),
              customTransform(title: 'Cocola', value: cocola),
              customTransform(title: 'Ifad', value: ifad),
              customTransform(title: 'Kazi Farmas', value: kazi),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              CustomButton(
                onPressed: () {},
                backgroundColor: Color(0xff53B175),
                text: 'Apply Filters',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Transform customTransform({required String title, required bool value}) {
    return Transform.scale(
      scale: 1,
      child: CheckboxListTile(
        title: Text(
          title,
          style: TextStyle(
            color: value ? Colors.green : Colors.black,
          ),
        ),
        value: value,
        onChanged: (bool? newValue) {
          setState(() {
            if (title == 'Eggs') eggs = newValue!;
            if (title == 'Noodles & Pasta') noodles = newValue!;
            if (title == 'Chips & Crisps') chips = newValue!;
            if (title == 'Fast Food') fastFood = newValue!;
            if (title == 'Individual Callection') individual = newValue!;
            if (title == 'Cocola') cocola = newValue!;
            if (title == 'Ifad') ifad = newValue!;
            if (title == 'Kazi Farmas') kazi = newValue!;
          });
        },
        activeColor: Colors.green,
        contentPadding: EdgeInsets.zero,
        checkColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  Text titleFilter({required String title}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
