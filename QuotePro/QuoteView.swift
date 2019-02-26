//
//  QuoteView.swift
//  QuotePro
//
//  Created by Van Luu on 2019-02-20.
//  Copyright © 2019 Van Luu. All rights reserved.
//

import UIKit

class QuoteView: UIView {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var randomImageView: UIImageView!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func setupWithQuote(_ quote: SavedQuote) {
        quoteLabel.text = quote.quote.quote
        authorLabel.text = quote.quote.author
        randomImageView.image = UIImage(data: quote.picture)
    }

}
