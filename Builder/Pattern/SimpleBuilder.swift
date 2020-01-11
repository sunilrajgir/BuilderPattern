//
//  SimpleBuilder.swift
//  Builder
//
//  Created by sunil.kumar1 on 1/11/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class SimpleBuilder: NSObject {
    func build() -> Student {
        let student = Student()
        student.name = "Suni"
        student.age = 20
        student.address = "Delhi"
        student.fatherName = "abc"
        student.motherName = "xyz"
        student.isMarried = false
        return student
    }
}
