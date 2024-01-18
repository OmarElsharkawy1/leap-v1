import 'dart:ui';

import 'package:leap/view/constants/assets.dart';

class Job {
  Job({
    required this.title,
    required this.skill,
    required this.salary,
    required this.location,
    required this.logo,
  });

  final String title;
  final String skill;
  final String salary;
  final String location;
  final String logo;
}

final List<Job> dummyJobs = [
  Job(
    logo: nike,
    title: 'TeamLead Engineer',
    skill: '.Net Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
  Job(
    logo: nike,
    title: 'Senior SW Engineer',
    skill: 'Flutter Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
  Job(
    logo: nike,
    title: 'Senior SW Engineer',
    skill: 'React Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
];
