//
//  File.swift
//  Swifter
//
//  Created by Diego Doval on 4/13/19.
//  Copyright © 2019 Damian Kołakowski. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    func runBlock(_ possibleBlock:(()->())?) {
        if let block = possibleBlock {
            self.async {
                block()
            }
        }
    }
}
