//
//  NewTimerViewController.swift
//  work&analyse
//
//  Created by Ruslan Khanov on 02.02.2021.
//

import UIKit

class NewTimerViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet private var startButton: UIButton! {
        didSet {
            startButton.layer.cornerRadius = 11.0
            startButton.layer.masksToBounds = true
            
            // Set the attributed title for different states
            if let customFont = UIFont(name: "OpenSans-Bold", size: 23.0) {

                let normalAttributedTitle = NSAttributedString(string: "START", attributes: [.foregroundColor : UIColor.white, .font: customFont, .kern: 5])
                startButton.setAttributedTitle(normalAttributedTitle, for: .normal)
            }
        }
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        customizeNavigationBar()
    }
    
    func customizeNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        if let appearance = navigationController?.navigationBar.standardAppearance
         {
            appearance.configureWithTransparentBackground()
            if let customFont = UIFont(name: "OpenSans-Bold", size: 40.0) {
                appearance.largeTitleTextAttributes = [.font: customFont, .foregroundColor: UIColor.white]
        }
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
        }
    }
}
