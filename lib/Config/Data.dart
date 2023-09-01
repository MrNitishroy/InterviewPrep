import 'package:chatgpt/Model/PromptModel.dart';
import 'package:chatgpt/Model/QuestionModel.dart';

var conversetionPrompt = [
  PromptModel(
    title: "Hotel Receptionist",
    prompt: "Talk with me as a Hotel Receptionist",
    category: "Hotel",
  ),
  PromptModel(
    title: "Hotel Manager",
    prompt: "Talk with me as a Hotel Manger",
    category: "Hotel",
  ),
  PromptModel(
    title: "Hotel Food Order",
    prompt: "Talk with me as a Hotel Food Order ",
    category: "Hotel",
  ),
  PromptModel(
    title: "Hotel Rool cleaner",
    prompt: "Talk with me as a Hotel Room Cleaner",
    category: "Hotel",
  ),
];

var QuestionData = [
  QuestionModel(
    title: "HR Interview",
    isCompleted: false,
    questionLevel: [
      QuestionLevel(
          level: "Level 1",
          isCompeleted: false,
          totalScore: 0,
          listOfQuestion: [
            ListOfQuestion(
              question: "Tell me about your self",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is ",
              answer: "",
              userAnswer: "",
            ),
          ]),
      QuestionLevel(
          level: "Level 2",
          isCompeleted: false,
          totalScore: 0,
          listOfQuestion: [
            ListOfQuestion(
              question: "Tell me about your self",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
          ]),
      QuestionLevel(
        level: "Level 2",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Tell me about your self",
            answer: "",
            userAnswer: "",
          ),
          ListOfQuestion(
            question: "What is your salary expactetion",
            answer: "",
            userAnswer: "",
          ),
        ],
      ),
    ],
  ),
  QuestionModel(
    title: "Speeking English",
    isCompleted: false,
    questionLevel: [
      QuestionLevel(
          level: "Level 1",
          isCompeleted: false,
          totalScore: 0,
          listOfQuestion: [
            ListOfQuestion(
              question: "Tell me about your self",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
          ]),
      QuestionLevel(
          level: "Level 2",
          isCompeleted: false,
          totalScore: 0,
          listOfQuestion: [
            ListOfQuestion(
              question: "Tell me about your self",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
          ]),
      QuestionLevel(
          level: "Level 2",
          isCompeleted: false,
          totalScore: 0,
          listOfQuestion: [
            ListOfQuestion(
              question: "Tell me about your self",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
          ]),
    ],
  ),
];

var tensQuestions = [
  QuestionModel(
    title: "Present Tense",
    isCompleted: false,
    questionLevel: [
      QuestionLevel(
        level: "Simple Present Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Present Continuous Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Present Perfect Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Present Perfect Continuous Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
    ],
  ),
  QuestionModel(
    title: "Past Tense",
    isCompleted: false,
    questionLevel: [
      QuestionLevel(
        level: "Simple Past Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Past Continuous Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Past Perfect Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Past Perfect Continuous Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
    ],
  ),
  QuestionModel(
    title: "Future Tense",
    isCompleted: false,
    questionLevel: [
      QuestionLevel(
        level: "Simple Future Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Future Continuous Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Future Perfect Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
      QuestionLevel(
        level: "Future Perfect Continuous Tense",
        isCompeleted: false,
        totalScore: 0,
        listOfQuestion: [
          ListOfQuestion(
            question: "Mai Daily School jata hu",
            answer: "go",
            userAnswer: "",
          ),
        ],
      ),
    ],
  ),
];
