//
//  QuoteTableViewController.swift
//  InspoQuotes-NoStoryboard
//
//  Created by Eliu Efraín Díaz Bravo on 02/02/21.
//  Copyright © 2021 Eliu Efraín Díaz Bravo. All rights reserved.
//

import UIKit

class QuoteTableViewController: UITableViewController {
    
    //MARK: - Variables
    
    var quotesToShow = [
        "Our greatest glory is not in never falling, but in rising every time we fall. — Confucius",
        "All our dreams can come true, if we have the courage to pursue them. – Walt Disney",
        "It does not matter how slowly you go as long as you do not stop. – Confucius",
        "Everything you’ve ever wanted is on the other side of fear. — George Addair",
        "Success is not final, failure is not fatal: it is the courage to continue that counts. – Winston Churchill",
        "Hardships often prepare ordinary people for an extraordinary destiny. – C.S. Lewis"
    ]
    
    let premiumQuotes = [
        "Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine. ― Roy T. Bennett",
        "I learned that courage was not the absence of fear, but the triumph over it. The brave man is not he who does not feel afraid, but he who conquers that fear. – Nelson Mandela",
        "There is only one thing that makes a dream impossible to achieve: the fear of failure. ― Paulo Coelho",
        "It’s not whether you get knocked down. It’s whether you get up. – Vince Lombardi",
        "Your true success in life begins only when you make the commitment to become excellent at what you do. — Brian Tracy",
        "Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going. – Chantal Sutherland"
    ]
    
    //MARK: - Application Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // We need to setup a cell before we see anything
        setupTableView()
        setupNavigationBar()
    }
    
    //MARK: - User Methods
    
    func setupNavigationBar() {
        title = "Inspo Quotes"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Restore", style: .plain, target: self, action: #selector(restorePressed))
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barTintColor = .systemTeal
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white ]
        
    }
    
    func setupViews() {
        
    }
    
    func setupConstraints() {
        // let safeArea = view.safeAreaLayoutGuide
    }
    
    func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "quote")
    }
    
    @objc private func restorePressed() {
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotesToShow.count + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quote", for: indexPath)
        
        if indexPath.row < quotesToShow.count {
            cell.textLabel?.text = quotesToShow[indexPath.row]
            cell.textLabel?.numberOfLines = 0
        } else {
            cell.textLabel?.text = "Get more quotes"
            cell.textLabel?.textColor = #colorLiteral(red: 0, green: 0.7671599984, blue: 0.8210678101, alpha: 1)
            cell.accessoryType = .disclosureIndicator
        }
        
        return cell
    }
    
    //MARK: - Table view delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == quotesToShow.count {
            buyPremiumQuotes()
        }
        tableView.deselectRow(at: indexPath, animated: true)
        // let cell = tableView.dequeueReusableCell(withIdentifier: "quote", for: indexPath)
    }
    
    //MARK: - In-App purchase methods
    
    func buyPremiumQuotes() {
        
    }
    
}
