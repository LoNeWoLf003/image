import 'package:flutter/material.dart';
import 'enlist.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String? _selectedDocumentType;
  final List<String> _garden_name = [
    'Garden A',
    'Garden B',
    'Garden c',
    'Garden D'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedDocumentType,
              onChanged: (newValue) {
                setState(() {
                  _selectedDocumentType = newValue;
                });
              },
              items: _garden_name.map((documentType) {
                return DropdownMenuItem<String>(
                  value: documentType,
                  child: Text(documentType),
                );
              }).toList(),
              decoration: const InputDecoration(
                labelText: 'Garden Name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform signup logic here
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DocumentUploadForm()),
                );
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
