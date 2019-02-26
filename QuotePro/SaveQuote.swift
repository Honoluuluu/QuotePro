//
//  SaveQuote.swift
//  QuotePro
//
//  Created by Van Luu on 2019-02-20.
//  Copyright © 2019 Van Luu. All rights reserved.
//

import UIKit

class SavedQuote {
    var quote: Quote
    var picture: Data
    
    init(quote: Quote, picture: Data) {
        self.quote = quote
        self.picture = picture
    }
}
