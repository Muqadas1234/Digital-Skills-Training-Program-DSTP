import 'package:flutter/material.dart';
import 'for_student_add_student.dart';

void main() {
  runApp(const StudentApp());
}

// STUDENT MODEL


class Student {
  int id;
  String name;
  String fatherName;
  List<String>? subjects;

  Student({
    required this.id,
    required this.name,
    required this.fatherName,
    this.subjects,
  });
}


// APP


class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentListScreen(),
    );
  }
}


// STUDENT LIST SCREEN


class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() =>
      _StudentListScreenState();
}

class _StudentListScreenState
    extends State<StudentListScreen> {


  // STUDENT LIST


  List<Student> students = [
    Student(
      id: 1,
      name: "name1",
      fatherName: "fatherName1",
    ),
    Student(
      id: 2,
      name: "name2",
      fatherName: "fatherName2",
    ),
    Student(
      id: 3,
      name: "name3",
      fatherName: "fatherName3",
    ),
    Student(
      id: 4,
      name: "Muhib",
      fatherName: "Arif",
    ),
  ];

  // ===============================
  // ADD STUDENT
  // ===============================

  void addStudent() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const ForStudentAddStudent();
        },
      ),
    );

    if (result != null && result is Student) {
      setState(() {
        students.add(result);
      });
    }
  }

  // DELETE STUDENT


  void removeStudent(int index) {
    setState(() {
      students.removeAt(index);
    });
  }


  // EDIT STUDENT

  void editStudent(Student studentModelToEdit) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForStudentsEditScreen(
          studentModelForEdit: studentModelToEdit,
        ),
      ),
    );

    print("updated name\n${result.name}");

    int foundIndex =
    students.indexWhere((student) => student.id == result.id);

    students[foundIndex] = result;

    setState(() {});
  }


  // STUDENT CARD


  Widget myStudentCard({
    required Student student,
    required int index,
  }) {
    return Container(
      width: double.infinity,

      margin: const EdgeInsets.only(
        bottom: 10,
      ),

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [


          // STUDENT INFORMATION


          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  student.name,

                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  student.fatherName,
                ),

                const SizedBox(height: 5),

                Text(
                  "ID: ${student.id}",
                ),
              ],
            ),
          ),


          // EDIT


          InkWell(
            onTap: () {
              editStudent(student);
            },

            child: const Icon(
              Icons.edit,
              color: Colors.blue,
            ),
          ),

          const SizedBox(width: 15),

          // DELETE

          InkWell(
            onTap: () {
              removeStudent(index);
            },

            child: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }


  // BUILD


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Manager",
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: ListView.builder(
          itemCount: students.length,

          shrinkWrap: true,

          physics:
          const NeverScrollableScrollPhysics(),

          itemBuilder: (context, index) {
            return myStudentCard(
              student: students[index],
              index: index,
            );
          },
        ),
      ),

      // ADD BUTTON


      floatingActionButton: FloatingActionButton(
        onPressed: addStudent,

        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}