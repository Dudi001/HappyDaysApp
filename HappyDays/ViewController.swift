//
//  ViewController.swift
//  FirstApp
//
//  Created by Мурад Манапов on 03.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
//    @IBOutlet weak var resultButton: UIButton!
    private var numbersOfDays = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        resultButton.layer.cornerRadius = 12
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numbersOfDays) дней"
    }
    
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numbersOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

