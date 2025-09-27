import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/skills': (context) => const SkillsPage(),
        '/projects': (context) => const ProjectsPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

// ---------- HOME PAGE ----------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/img.jpg"),
              ),
              const SizedBox(height: 16),
              const Text("Komati Yashvitha",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/about'),
                      child: const Text("About Me")),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/skills'),
                      child: const Text("Skills")),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/projects'),
                      child: const Text("Projects")),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/contact'),
                      child: const Text("Contact")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------- ABOUT PAGE ----------
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "I am a dedicated student with knowledge in Python, Java, MySQL, "
                    "and Machine Learning. I enjoy applying these skills to solve real-world problems "
                    "and building innovative projects.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("⬅ Back to Home")),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------- SKILLS PAGE ----------
class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = ["Python", "Java", "MySQL", "Machine Learning"];
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: skills
                    .map((skill) => Chip(
                          label: Text(skill),
                          backgroundColor: Colors.teal.shade50,
                        ))
                    .toList(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("⬅ Back to Home")),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------- PROJECTS PAGE ----------
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProjectCard(
                title: "Text Summarization",
                description:
                    "ML project using Pegasus and GPT-2 for summarizing text.",
              ),
              ProjectCard(
                title: "Energy Consumption Prediction",
                description:
                    "ML project using Random Forest & XGBoost for forecasting energy usage.",
              ),
              ProjectCard(
                title: "Mammas Monitor",
                description:
                    "Web project for easy interaction between doctors and pregnant women.",
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

// ---------- CONTACT PAGE ----------
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("📧 Email: yashvithakomati2007@gmail.com"),
              SizedBox(height: 8),
              Text("🔗 GitHub: github.com/Yashvitha2308"),
              SizedBox(height: 8),
              Text("💼 LinkedIn: linkedin.com/in/komati-yashvitha-63601434a"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

// ---------- PROJECT CARD ----------
class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
