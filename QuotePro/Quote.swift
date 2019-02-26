//
//  Quote.swift
//  QuotePro
//
//  Created by Van Luu on 2019-02-20.
//  Copyright © 2019 Van Luu. All rights reserved.
//

import UIKit

class Quote {
    var quote: String?
    var author: String?
    
    init(quote: String?, author: String?) {
        self.quote = quote ?? "No Quote"
        self.author = author ?? "No author"
    }
}
