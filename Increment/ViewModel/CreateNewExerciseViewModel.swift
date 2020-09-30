//
//  CreateNewExerciseViewModel.swift
//  Increment
//
//  Created by Everis on 29/09/2020.
//  Copyright © 2020 Alan. All rights reserved.
//

import SwiftUI

final class CreateNewExerciseViewModel: ObservableObject {
    @Published var dropdowns: [ChallengePartViewModel] = [
        .init(type: .exercise),
        .init(type: .startAmount),
        .init(type: .increase),
        .init(type: .length)
    ]
}

extension CreateNewExerciseViewModel {
    struct ChallengePartViewModel: DropDownButtonProtocol {
        var options: [DropDownOption]
        
        var headerTitle: String {
            type.rawValue
        }
        
        var dropdownTitle: String {
            options.first(where: { $0.isSelected })?.fotmatted ?? ""
        }
        
        var isSelected: Bool = false
        
        private let type: CreateNewExerciseType
        
        init(type: CreateNewExerciseType) {
            switch type {
            case .exercise:
                self.options = ExerciseOption.allCases.map{ $0.toDropdownOptions }
            case .startAmount:
                self.options = StartOption.allCases.map{ $0.toDropdownOptions }
            case .increase:
                self.options = IncreaseOption.allCases.map{ $0.toDropdownOptions }
            case .length:
                self.options = LengthOption.allCases.map{ $0.toDropdownOptions }
            }
            
            self.type = type
        }
        
        enum CreateNewExerciseType: String, CaseIterable {
            case exercise = "Exercise"
            case startAmount = "Starting Amount"
            case increase = "Daily Increase"
            case length = "Challenge Length"
        }
        
        enum ExerciseOption: String, CaseIterable, DropDownOptionProtocol {
            case pullups
            case pushups
            case situps
            
            var toDropdownOptions: DropDownOption {
                .init(type: .text(rawValue), fotmatted: rawValue.capitalized, isSelected: self == .pullups)
            }
        }
        
        enum StartOption: Int, CaseIterable, DropDownOptionProtocol {
            case one = 1, two, three, four, five
            
            var toDropdownOptions: DropDownOption {
                .init(type: .number(rawValue), fotmatted: "\(rawValue)", isSelected: self == .one)
            }
        }
        
        enum IncreaseOption: Int, CaseIterable, DropDownOptionProtocol {
            case one = 1, two, three, four, five
            
            var toDropdownOptions: DropDownOption {
                .init(type: .number(rawValue), fotmatted: "+\(rawValue)", isSelected: self == .one)
            }
        }
        
        enum LengthOption: Int, CaseIterable, DropDownOptionProtocol {
            case seven = 7, fourteen = 14, twentyOne = 21, twentyEight = 28
            
            var toDropdownOptions: DropDownOption {
                .init(type: .number(rawValue), fotmatted: "\(rawValue) days", isSelected: self == .seven)
            }
        }
        
    }
}
