//
//  ViewController.swift
//  studyMyAlbum
//
//  Created by 최호준 on 2021/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hello(_ sender: Any) {
        // alert 창 구성 - contents
        let alert = UIAlertController(title: "Hello", message: "My First App!", preferredStyle:.alert)
        
        // alert 창 구성 - button
        // handler가 `nil`이면 아무것도 안하고 창 닫음
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        // alert contents에 action 추가
        alert.addAction(action)
       
        // alert을 띄우는 함수
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func newBtn(_ sender: Any) {
        let alert = UIAlertController(title: "New", message: "Button", preferredStyle: .alert)
        let action = UIAlertAction(title: "YES", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "NO", style: .default, handler: nil)
        alert.addAction(action)
        alert.addAction(action2)
        present(alert, animated: true, completion: nil)
    }
}

