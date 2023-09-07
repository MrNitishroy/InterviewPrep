import 'package:chatgpt/Model/PromptModel.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/Model/SentanceCorrect.dart';

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
  String response =
      "Certainly, here are the scores for each section:\n\nIntroduction: 8/10\n\nShort-term and Long-term Goals:\n\nShort-term goal: 7/10\nLong-term goal: 8/10\nWhy should I hire you? 7/10\n\nGreatest Strength and Weakness:\n\nGreatest strength: 9/10\nWeakness: 5/10";

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

var sentaceData = [
  ListOfQuestion(
    question: "ram goin to school when sohan not comming with him",
    answer: "true",
    userAnswer: "",
  ),
  ListOfQuestion(
    question: "2 ram goin to school when sohan not comming with him",
    answer: "true",
    userAnswer: "",
  ),
  ListOfQuestion(
    question: "3 ram goin to school when sohan not comming with him",
    answer: "true",
    userAnswer: "",
  ),
  ListOfQuestion(
    question: "4 ram goin to school when sohan not comming with him",
    answer: "true",
    userAnswer: "",
  ),
];

var sentanceQuestion = [
  SentanceQuestion(
      categoryTitle: "Grammer Error",
      isCompleted: false,
      totalScore: 100,
      userScore: 10,
      SquestionLevel: [
        SQuestionLevel(
          level: "Leve 1 Grammer error",
          isCompleted: false,
          totalScore: 100,
          userScore: 10,
          SlistOfQuestion: [
            SListOfQuestion(
              question: " I goed to the store yesterday",
              answer: " I went to the store yesterday",
              isCorrect: false,
            ),
            SListOfQuestion(
              question: "She don't like pizza.",
              answer: "She doesn't like pizza.",
              isCorrect: false,
            ),
            SListOfQuestion(
              question: "They're going to the party too.",
              answer: "They're going to the party too.",
              isCorrect: true,
            ),
            SListOfQuestion(
              question: "I seen that movie last night.",
              answer: "I saw that movie last night.",
              isCorrect: false,
            ),
            SListOfQuestion(
              question: "He talks louder than she does.",
              answer: "He talks louder than she does.",
              isCorrect: true,
            ),
            SListOfQuestion(
              question: "The cat chases its tail.",
              answer: "The cat chases its tail.",
              isCorrect: true,
            ),
            SListOfQuestion(
              question: " I could of gone to the concert.",
              answer: " I could of gone to the concert.",
              isCorrect: false,
            ),
            SListOfQuestion(
              question: "She's allergic to shrimps.",
              answer: "She's allergic to shrimp.",
              isCorrect: false,
            ),
            SListOfQuestion(
              question: "She's allergic to shrimp.",
              answer: "We saw a shooting star.",
              isCorrect: false,
            ),
            SListOfQuestion(
              question: "He doesn't know the answer.",
              answer: "He doesn't know the answer.",
              isCorrect: true,
            ),
          ],
        ),
        SQuestionLevel(
            level: "Leve 2 Grammer error",
            isCompleted: false,
            totalScore: 100,
            userScore: 10,
            SlistOfQuestion: [
              SListOfQuestion(
                question:
                    "The employees of this company demand higher salaries for a very long period of time.",
                answer:
                    "The employees of this company have been demanding higher salaries for a very long time.",
                isCorrect: false,
              ),
              SListOfQuestion(
                question:
                    "The train is expected to arrive between 11 pm to 12 pm.",
                answer:
                    "The train is expected to arrive between 11pm and 12pm.",
                isCorrect: false,
              ),
              SListOfQuestion(
                question:
                    "If the cab had started on time, she would have reached office on time.",
                answer:
                    "If the cab had started on time, she would have reached office on time.",
                isCorrect: true,
              ),
              SListOfQuestion(
                question:
                    "The renowned Birla’s family is divided on the property.",
                answer: "The renowned Birla family is divided on the property.",
                isCorrect: false,
              ),
              SListOfQuestion(
                question: " What kind of a car do you want?",
                answer: "What kind of car do you want?",
                isCorrect: false,
              ),
              SListOfQuestion(
                question: "Nishi asked the boy if he could take her home then",
                answer: "Nishi asked the boy if he could take her home then",
                isCorrect: true,
              ),
              SListOfQuestion(
                question: "The hardworking salesman collected the payment.",
                answer: "The hardworking salesman collected the payment.",
                isCorrect: true,
              ),
              SListOfQuestion(
                question: " ",
                answer: "",
                isCorrect: false,
              ),
              SListOfQuestion(
                question: " ",
                answer: "",
                isCorrect: false,
              ),
            ])
      ])
];
