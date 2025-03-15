import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/core/utils/widgets/custom_scaffold.dart';
import 'package:nectar/features/auth/presentation/pages/login_view.dart';
import 'package:nectar/features/auth/presentation/widgets/custom_back_button.dart';

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});
  static const routeName = '/selectLocationView';

  @override
  SelectLocationViewState createState() => SelectLocationViewState();
}

class SelectLocationViewState extends State<SelectLocationView> {
  String? selectedZone;
  String? selectedArea;
  List<String> zones = ["Banasree", "Dhanmondi", "Gulshan"];
  List<String> areas = ["Type 1", "Type 2", "Type 3"];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomBackButton(),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/icons/location.png',
                width: 224,
              ),
              const SizedBox(height: 40),
              const Text(
                "Select Your Location",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                "Switch on your location to stay in tune with what's happening in your area",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 80),
              Row(
                children: [
                  Text(
                    'Your Zone',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF7C7C7C),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              DropdownButtonFormField<String>(
                value: selectedZone,
                hint: const Text("Types of your zone"),
                items: zones.map((String zone) {
                  return DropdownMenuItem(
                    value: zone,
                    child: Text(zone),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedZone = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Your Area',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF7C7C7C),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              DropdownButtonFormField<String>(
                value: selectedArea,
                hint: const Text("Types of your area"),
                items: areas.map((String area) {
                  return DropdownMenuItem(value: area, child: Text(area));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedArea = value;
                  });
                },
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                },
                backgroundColor: Color(0xff53B175),
                text: 'Submit',
              )
            ],
          ),
        ),
      ),
    );
  }
}
