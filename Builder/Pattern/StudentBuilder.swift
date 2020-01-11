//
//  StudentBuilder.swift
//  Builder
//
//  Created by sunil.kumar1 on 1/11/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class StudentBuilder {
    var name: String?
    private var age: Int?
    private var address: String?
    private var fatherName: String?
    private var motherName: String?
    private var isMarried: Bool?
    
    func build() -> StudentBuilder {
        self.name = "Suni"
        self.age = 20
        self.address = "Delhi"
        self.fatherName = "abc"
        self.motherName = "xyz"
        self.isMarried = false
        return self
    }
}
