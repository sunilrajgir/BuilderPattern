//
//  BlockBasedBuilder.swift
//  Builder
//
//  Created by sunil.kumar1 on 1/11/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class Book {
    var name: String?
    var price: Int?
}

class BlockBasedBuilder: NSObject {
    
    func build(completion:(Book)->Void)->Book {
        let book = Book()
        completion(book)
        return book
    }

}
