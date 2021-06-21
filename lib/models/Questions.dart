class Question {
  final int id, answer;
  final String question;
  final String image;
  final List<String> options;

  Question({this.id, this.question, this.image, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "image": "assets/icons/question.jpg",
    "question": "What is the name of this painting",
    "options": [
      'The Astronmer',
      'Les Amants (The Lovers)',
      'Olympia',
      'Five Bathing Women at a Lake'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "image": "assets/icons/periodic.jpg",
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "image": "assets/icons/periodic.jpg",
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "image": "assets/icons/periodic.jpg",
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
