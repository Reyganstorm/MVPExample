//
//  ViewController.swift
//  MVPExample
//
//  Created by Руслан Штыбаев on 12.05.2022.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController {

    
    @IBOutlet weak var greetingLabel: UILabel!
    
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surName: "Cook")
        
        presenter =  GreetingPresenter(view: self, person: person)
    }


    @IBAction func showGreetingPressed() {
        presenter.showGreeting()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}

