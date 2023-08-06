import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:living_pro/utils/colors.dart';
import 'package:living_pro/utils/custom_textfield.dart';
import 'package:living_pro/utils/text.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> dropdownItems = ['Apartment', 'Roommate', 'House'];
  final List<String> dropdownItems2 = ['Profile', 'Posts', 'price'];
  final List<String> dropdownItems3 = ['Date Posted', 'Date', 'Time'];
  String selectedValue = 'Apartment';
  String selectedValue2 = 'Profile';
  String selectedValue3 = 'Date Posted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              prefix: Icon(
                Icons.search,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFBDBDBD)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      value: selectedValue,
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.black),
                      onChanged: (newValue) {
                        // When the user selects an option, update the selectedValue and rebuild the UI
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFBDBDBD)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      value: selectedValue2,
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.black),
                      onChanged: (newValue2) {
                        // When the user selects an option, update the selectedValue and rebuild the UI
                        setState(() {
                          selectedValue2 = newValue2!;
                        });
                      },
                      items: dropdownItems2.map((String value2) {
                        return DropdownMenuItem<String>(
                          value: value2,
                          child: Text(value2),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFBDBDBD)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      value: selectedValue3,
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.black),
                      onChanged: (newValue3) {
                        // When the user selects an option, update the selectedValue and rebuild the UI
                        setState(() {
                          selectedValue3 = newValue3!;
                        });
                      },
                      items: dropdownItems3.map((String value3) {
                        return DropdownMenuItem<String>(
                          value: value3,
                          child: Text(value3),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            BaseText(
              text: "Recently Viewed Apartments",
              color: AppColor.black,
              weight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }
}
