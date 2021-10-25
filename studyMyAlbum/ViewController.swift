//
//  ViewController.swift
//  studyMyAlbum
//
//  Created by 최호준 on 2021/10/23.
//

import UIKit

class ViewController: UIViewController {
    // 타입 추론 - option 누르고 변수 클릭
    // var currentValue: int = 0
    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    
    @IBAction func refreshPrice(_ sender: Any) {
        let message = "가격은 $\(currentValue) 입니다"
        let alert = UIAlertController(title: "New", message: message, preferredStyle: .alert)
        // handler -> closure
        let action = UIAlertAction(title: "YES", style: .default, handler: { action in self.refresh() })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "$ \(currentValue)"
    }
}

