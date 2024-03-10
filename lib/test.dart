import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

Future<String?> pickPdfFile() async {
  // Request storage permission (required for Android 10+)
  var storageStatus = await Permission.storage.request();
  if (!storageStatus.isGranted) {
    throw Exception('Storage permission denied');
  }

  // Use the `file_picker` plugin for a unified file picking experience
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['pdf'], // Filter for PDF files
  );

  if (result != null) {
    final path = result.files.single.path;
    // Handle the picked PDF file path (e.g., display, open with a PDF viewer)
    return path;
  } else {
    // User canceled or failed to pick a file
    return null;
  }
}
