//
//  QuizeQuestion.swift
//  MovieQuiz
//
//  Created by Dosh on 15.10.2023.
//

import Foundation

struct QuizeQuestion {
    // строка с названием фильма,
    // совпадает с названием картинки афиши фильма в Assets
    let image: String
    // строка с вопросом о рейтинге фильма
    let text: String
    // булевое значение (true, false), правильный ответ на вопрос
    let correctAnswer: Bool
}
