//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Dosh on 23.10.2023.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    let completion: () -> Void
}
