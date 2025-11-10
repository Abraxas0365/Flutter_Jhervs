import 'package:flutter/material.dart';
import 'submitValidID_page.dart';

class CreditFormPage extends StatefulWidget {
  const CreditFormPage({super.key});

  @override
  State<CreditFormPage> createState() => _CreditFormPageState();
}

class _CreditFormPageState extends State<CreditFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for each field
  final nameController = TextEditingController();
  final dobController = TextEditingController();
  String gender = '';
  final nationalityController = TextEditingController();
  String civilStatus = '';
  final currentAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final referenceNameController = TextEditingController();
  final referenceMobileController = TextEditingController();

  bool _allFieldsFilled() {
    return nameController.text.isNotEmpty &&
        dobController.text.isNotEmpty &&
        gender.isNotEmpty &&
        nationalityController.text.isNotEmpty &&
        civilStatus.isNotEmpty &&
        currentAddressController.text.isNotEmpty &&
        permanentAddressController.text.isNotEmpty &&
        mobileController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        referenceNameController.text.isNotEmpty &&
        referenceMobileController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Application Form'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            color: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: dobController,
                      decoration: const InputDecoration(labelText: 'Date of Birth'),
                      readOnly: true,
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                      onTap: () async {
                        FocusScope.of(context).requestFocus(FocusNode());
                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime(2000),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.dark(
                                  primary: Colors.redAccent, // header background color
                                  onPrimary: Colors.white, // header text color
                                  surface: Color(0xFF1D1D1D),
                                  onSurface: Colors.white, // body text color
                                ),
                                textButtonTheme: TextButtonThemeData(
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
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (picked != null) {
                          dobController.text = "${picked.year}-${picked.month}-${picked.day}";
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: gender.isEmpty ? null : gender,
                      decoration: const InputDecoration(labelText: 'Gender'),
                      items: ['Male', 'Female', 'Other']
                          .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                          .toList(),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                      onChanged: (val) => setState(() => gender = val ?? ''),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: nationalityController,
                      decoration: const InputDecoration(labelText: 'Nationality'),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: civilStatus.isEmpty ? null : civilStatus,
                      decoration: const InputDecoration(labelText: 'Civil Status'),
                      items: ['Single', 'Married', 'Divorced', 'Widowed']
                          .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                          .toList(),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                      onChanged: (val) => setState(() => civilStatus = val ?? ''),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: currentAddressController,
                      decoration: const InputDecoration(labelText: 'Current Address'),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: permanentAddressController,
                      decoration: const InputDecoration(labelText: 'Permanent Address'),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: mobileController,
                      decoration: const InputDecoration(labelText: 'Mobile Number'),
                      keyboardType: TextInputType.phone,
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(labelText: 'Email Address'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: referenceNameController,
                      decoration: const InputDecoration(labelText: 'Reference/Emergency Contact Name'),
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: referenceMobileController,
                      decoration: const InputDecoration(labelText: 'Reference/Emergency Contact Mobile Number'),
                      keyboardType: TextInputType.phone,
                      validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false && _allFieldsFilled()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const SubmitValidIDPage()),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
