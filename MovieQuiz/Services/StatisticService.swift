//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by Dosh on 23.10.2023.
//

import Foundation

protocol StatisticService {
    var totalAccuracy: Double { get }
    var gamesCount: Int { get }
    var bestGame: GameRecord { get }
    func store(correct count: Int, total amount: Int)
}
