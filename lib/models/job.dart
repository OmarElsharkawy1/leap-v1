class Job {
  Job({
    required this.title,
    required this.skill,
    required this.salary,
    required this.location,
  });

  final String title;
  final String skill;
  final String salary;
  final String location;
}

final List<Job> dummyJobs = [
  Job(
    title: 'TeamLead Engineer',
    skill: '.Net Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
  Job(
    title: 'Senior SW Engineer',
    skill: 'Flutter Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
  Job(
    title: 'Senior SW Engineer',
    skill: 'React Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
];
