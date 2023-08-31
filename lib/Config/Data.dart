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
