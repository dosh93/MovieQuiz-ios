//
//  QuizeQuestion.swift
//  MovieQuiz
//
//  Created by Dosh on 15.10.2023.
//

import Foundation

struct QuizQuestion {
    // строка с названием фильма,
    // совпадает с названием картинки афиши фильма в Assets
    let image: Data
    // строка с вопросом о рейтинге фильма
    let text: String
    // булевое значение (true, false), правильный ответ на вопрос
    let correctAnswer: Bool
}
