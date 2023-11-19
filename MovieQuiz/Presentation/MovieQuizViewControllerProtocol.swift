//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Dosh on 19.11.2023.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(quiz result: QuizResultsViewModel)
    
    func highlightImageBorder(isCorrectAnswer: Bool)
    
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func deleteBorder()
    
    func showNetworkError(message: String)
} 
