import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ShowMoreText extends StatefulWidget {
  final String text;
  final int maxLines;
  final FontWeight? weight;
  final double? size;
  final Color? color;
  final TextAlign? alignText;
  final FontStyle? fontStyle;

  const ShowMoreText(
      {super.key, required this.text,
      this.maxLines = 2,
      this.weight,
      this.size,
      this.color,
      this.alignText,
      this.fontStyle});

  @override
  // ignore: library_private_types_in_public_api
  _ShowMoreTextState createState() => _ShowMoreTextState();
}

class _ShowMoreTextState extends State<ShowMoreText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge;

    final textSpan = TextSpan(
        text: widget.text, style: GoogleFonts.inter(textStyle: textStyle));
        

    final showMoreStyle = GoogleFonts.inter( 
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );

    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            maxLines: _isExpanded ? null : widget.maxLines,
            text: textSpan,
            overflow: TextOverflow.clip,
          ),
           
          if (!_isExpanded)
            Text(
              "see more",
              style: showMoreStyle,
            ),
        ],
      ),
    );
  }
}
