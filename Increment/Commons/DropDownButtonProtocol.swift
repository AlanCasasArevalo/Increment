//
//  DropDownButtonProtocol.swift
//  Increment
//
//  Created by Everis on 29/09/2020.
//  Copyright © 2020 Alan. All rights reserved.
//

import Foundation

protocol DropDownButtonProtocol {
    var options: [DropDownOption] { get }
    var headerTitle: String { get }
    var dropdownTitle: String { get }
    var isSelected: Bool { get set }
}


protocol DropDownOptionProtocol {
    var toDropdownOptions: DropDownOption { get }
}

struct DropDownOption {
    enum DropDownOptionType {
        case text(String)
        case number(Int)
    }
    
    let type: DropDownOptionType
    let fotmatted: String
    var isSelected: Bool
}
