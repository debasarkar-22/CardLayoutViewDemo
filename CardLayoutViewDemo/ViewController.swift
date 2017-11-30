//
//  ViewController.swift
//  CardLayoutViewDemo
//
//  Created by Debaditya  Sarkar on 11/30/17.
//  Copyright © 2017 IBM. All rights reserved.
//

import UIKit
import CardLayoutView

class ViewController: UIViewController {

    var cardLayoutManager: CardLayoutManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupCards()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupCards() {
        var contentControllers: [UIViewController] = []
        for _ in 0..<5 {
            let controller = UIViewController()
            controller.view.backgroundColor = .white
            contentControllers.append(controller)
        }
        
        cardLayoutManager = CardLayoutManager(with: view.frame, controllers: contentControllers)
        if let cardLayoutView = cardLayoutManager?.cardLayoutView {
            view.addSubview(cardLayoutView)
        }
    }
    

}

