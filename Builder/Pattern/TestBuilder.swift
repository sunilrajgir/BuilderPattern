//
//  TestBuilder.swift
//  Builder
//
//  Created by sunil.kumar1 on 1/11/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class TestBuilder {
    init() {
        let student = SimpleBuilder().build()
        print("Student Name: \(student.name!)")
        
        let student1 = StudentBuilder().build()
        print("Student Name: \(student1.name!)")
        
        let url = ChainedBuilder()
        .set(scheme: "https")
        .set(host: "localhost")
        .set(path: "api/v1")
        .addQueryItem(name: "sort", value: "name")
        .addQueryItem(name: "order", value: "asc")
        .build()
        
        print("url == \(url!)")
    }
}
