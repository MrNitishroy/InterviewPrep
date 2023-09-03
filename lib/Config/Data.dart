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
              question: "What is your long term goal and short term goal",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "What is your salary expactetion",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "Why should i hire you",
              answer: "",
              userAnswer: "",
            ),
            ListOfQuestion(
              question: "Are you willing to relocate",
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
              question: "Do you have any Question For me",
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



void demo() {
  String response = "Certainly, here are the scores for each section:\n\nIntroduction: 8/10\n\nShort-term and Long-term Goals:\n\nShort-term goal: 7/10\nLong-term goal: 8/10\nWhy should I hire you? 7/10\n\nGreatest Strength and Weakness:\n\nGreatest strength: 9/10\nWeakness: 5/10";

  // Regular expressions to extract scores
  RegExp introductionScoreRegex = RegExp(r'Introduction: (\d+)/(\d+)');
  RegExp shortTermGoalScoreRegex = RegExp(r'Short-term goal: (\d+)/(\d+)');
  RegExp longTermGoalScoreRegex = RegExp(r'Long-term goal: (\d+)/(\d+)');
  RegExp hireYouScoreRegex = RegExp(r'Why should I hire you\? (\d+)/(\d+)');
  RegExp greatestStrengthScoreRegex = RegExp(r'Greatest strength: (\d+)/(\d+)');
  RegExp weaknessScoreRegex = RegExp(r'Weakness: (\d+)/(\d+)');

  // Extract scores
  var introductionMatch = introductionScoreRegex.firstMatch(response);
  var shortTermGoalMatch = shortTermGoalScoreRegex.firstMatch(response);
  var longTermGoalMatch = longTermGoalScoreRegex.firstMatch(response);
  var hireYouMatch = hireYouScoreRegex.firstMatch(response);
  var greatestStrengthMatch = greatestStrengthScoreRegex.firstMatch(response);
  var weaknessMatch = weaknessScoreRegex.firstMatch(response);

  // Store scores in variables
  String introductionScore = introductionMatch?.group(0) ?? "N/A";
  String shortTermGoalScore = shortTermGoalMatch?.group(0) ?? "N/A";
  String longTermGoalScore = longTermGoalMatch?.group(0) ?? "N/A";
  String hireYouScore = hireYouMatch?.group(0) ?? "N/A";
  String greatestStrengthScore = greatestStrengthMatch?.group(0) ?? "N/A";
  String weaknessScore = weaknessMatch?.group(0) ?? "N/A";

  // Print the scores
  print("Introduction Score: $introductionScore");
  print("Short-term Goal Score: $shortTermGoalScore");
  print("Long-term Goal Score: $longTermGoalScore");
  print("Why should I hire you Score: $hireYouScore");
  print("Greatest Strength Score: $greatestStrengthScore");
  print("Weakness Score: $weaknessScore");
}
