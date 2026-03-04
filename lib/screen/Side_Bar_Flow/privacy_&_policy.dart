
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          "Privacy & Policy",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Text(
            '''
Lorem ipsum dolor sit amet consectetur. Orci odio lobortis magna placerat. Eu pharetra a nascetur donec at consectetur in rutrum. Enim sit eu sed fringilla ut. Diam vitae scelerisque accumsan ut interdum curabitur ac. Porta feugiat enim non arcu aliquam lacus nullam. Urna eget ut sed hendrerit sollicitudin aenean egestas arcu. Cursus neque in in mi convallis erat nibh a.

Lorem ipsum dolor sit amet consectetur. Orci odio lobortis magna placerat. Eu pharetra a nascetur donec at consectetur in rutrum. Enim sit eu sed fringilla ut. Diam vitae scelerisque.

Lorem ipsum dolor sit amet consectetur. Orci odio lobortis magna placerat. Eu pharetra a nascetur donec at consectetur in rutrum. Enim sit eu sed fringilla ut. Diam vitae scelerisque accumsan ut interdum curabitur ac. Porta feugiat enim non arcu aliquam lacus nullam. Urna eget ut sed hendrerit sollicitudin aenean egestas arcu. Cursus neque in in mi convallis erat nibh a.

Lorem ipsum dolor sit amet consectetur. Orci odio lobortis magna placerat. Eu pharetra a nascetur donec at consectetur in rutrum. Enim sit eu sed fringilla ut. Diam vitae scelerisque accumsan ut interdum curabitur ac. Porta feugiat enim non arcu aliquam lacus nullam. Urna eget ut sed hendrerit sollicitudin aenean egestas arcu. Cursus neque in in mi convallis erat nibh a.
''',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
              height: 1.6, // line spacing
            ),
          ),
        ),
      ),
    );
  }
}