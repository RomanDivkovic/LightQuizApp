//
//  QuistionProtocol.swift
//  MyAppTest
//
//  Created by Roman Divkovic on 2021-02-16.
//

import Foundation
import UIKit

protocol QuistionProtocol {
    var correctAnswer: Bool {get set}
    var quistion: String {get set}
    var image: UIImage {get set}
    
}
