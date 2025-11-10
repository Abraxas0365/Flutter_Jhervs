import 'dart:io' show File; // Use show to avoid web conflicts
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'marketplace_widget.dart';

class SubmitValidIDPage extends StatefulWidget {
  const SubmitValidIDPage({super.key});

  @override
  State<SubmitValidIDPage> createState() => _SubmitValidIDPageState();
}

class _SubmitValidIDPageState extends State<SubmitValidIDPage> {
  XFile? frontImageFile;
  XFile? backImageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(bool isFront) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85, // optional, compress for faster uploads
      );

      if (pickedFile != null) {
        setState(() {
          if (isFront) {
            frontImageFile = pickedFile;
          } else {
            backImageFile = pickedFile;
          }
        });
      }
    } catch (e) {
      debugPrint('Image picker error: $e');
    }
  }

  void _showProcessingDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: const EdgeInsets.all(24),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.access_time, size: 48, color: Colors.redAccent),
            SizedBox(height: 16),
            Text(
              "We will process your request within 2–5 days.\nThank you!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.redAccent,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1.2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const MarketplacePage()),
                (route) => false,
              );
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildImageBox({required bool isFront}) {
    final XFile? file = isFront ? frontImageFile : backImageFile;

    return Expanded(
      child: GestureDetector(
        onTap: () => _pickImage(isFront),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white24),
          ),
          child: file == null
              ? Center(
                  child: Text(
                    isFront ? "Front" : "Back",
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                )
              : _buildImagePreview(file),
        ),
      ),
    );
  }

  Widget _buildImagePreview(XFile file) {
    // Use Image.file on mobile, Image.network on web
    if (kIsWeb) {
      return Image.network(file.path, fit: BoxFit.cover);
    } else {
      return Image.file(File(file.path), fit: BoxFit.cover);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Submit Valid ID')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              const Text(
                "Please submit a valid ID",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center row horizontally
                children: [
                  _buildImageBox(isFront: true),
                  const SizedBox(width: 24),
                  _buildImageBox(isFront: false),
                ],
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32), // Add horizontal padding
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: (frontImageFile != null && backImageFile != null)
                    ? _showProcessingDialog
                    : null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.check, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
