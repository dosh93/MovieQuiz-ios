//
//  StatisticServiceImplementation.swift
//  MovieQuiz
//
//  Created by Dosh on 23.10.2023.
//

import Foundation

final class StatisticServiceImplementation: StatisticService{
    private let userDefaults = UserDefaults.standard
    
    var totalAccuracy: Double {
        get {
            let totalGames = userDefaults.integer(forKey: Keys.total.rawValue)
            let totalCorrect = userDefaults.integer(forKey: Keys.correct.rawValue)
            return totalGames == 0 ? 0 : (Double(totalCorrect) / Double(totalGames)) * 100
        }
    }
    
    var gamesCount: Int {
        return userDefaults.integer(forKey: Keys.gamesCount.rawValue)
    }
    
    func store(correct count: Int, total amount: Int) {
        let newGame = GameRecord(correct: count, total: amount, date: Date())
        
        var totalCorrect = userDefaults.integer(forKey: Keys.correct.rawValue)
        totalCorrect += count
        userDefaults.set(totalCorrect, forKey: Keys.correct.rawValue)
        
        var totalQuestions = userDefaults.integer(forKey: Keys.total.rawValue)
        totalQuestions += amount
        userDefaults.set(totalQuestions, forKey: Keys.total.rawValue)
        
        var gamesCount = userDefaults.integer(forKey: Keys.gamesCount.rawValue)
        gamesCount += 1
        userDefaults.set(gamesCount, forKey: Keys.gamesCount.rawValue)
        
        if newGame.isBetterThan(bestGame) {
            bestGame = newGame
        }
    }
    
    
    var bestGame: GameRecord {
        get {
            guard let data = userDefaults.data(forKey: Keys.bestGame.rawValue),
                  let record = try? JSONDecoder().decode(GameRecord.self, from: data) else {
                return .init(correct: 0, total: 0, date: Date())
            }
            
            return record
        }
        
        set {
            guard let data = try? JSONEncoder().encode(newValue) else {
                print("Невозможно сохранить результат")
                return
            }
            
            userDefaults.set(data, forKey: Keys.bestGame.rawValue)
        }
    }
    
}

private enum Keys: String {
    case correct, total, bestGame, gamesCount
}
