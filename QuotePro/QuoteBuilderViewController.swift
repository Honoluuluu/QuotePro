//
//  QuoteBuilderViewController.swift
//  QuotePro
//
//  Created by Van Luu on 2019-02-20.
//  Copyright © 2019 Van Luu. All rights reserved.
//

import UIKit

class QuoteBuilderViewController: UIViewController {
    
    var requestManager: RequestManager!
    var quote: Quote?
    var image: Image?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestManager = RequestManager()
        quoteLabel.numberOfLines = 0
        view.backgroundColor = .gray

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getQuoteButtonPressed(_ sender: UIButton) {
        
        requestManager.getQuote {receivedQuote in
            self.quote = receivedQuote
            
            DispatchQueue.main.async {
                
                
                self.quoteLabel.text = receivedQuote.quote
                
                self.authorLabel.text = receivedQuote.author
            }
        }
    }
    
    @IBAction func getImageButtonPressed(_ sender: UIButton) {
        
        requestManager.getImages { receivedImage in
            self.image = receivedImage
            
            DispatchQueue.main.async {
                
                
                guard let urlString = self.image?.link else {
                    return
                }
                guard let url = URL(string: urlString) else {
                    return
                }
                let data = try? Data(contentsOf: url)
                self.imageView.image = UIImage(data: data!)
            }
        }
        
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToMainScreen", sender: self)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
