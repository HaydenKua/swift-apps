//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Hayden Kua on 29/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
    
    var divisions: [Division] = []
    var currentDate: Date = Date()



    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDummyData()
        updateDateDisplay()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Division", for: indexPath)
        
        let selectedDivision = divisions[indexPath.row]
        cell.textLabel?.text = selectedDivision.code
        
        if divisions[indexPath.row].getAbsence(for: currentDate) != nil {
            tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
            print(indexPath.row)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        let selectedDivision = divisions[indexPath.row]
        
        var absence = Absence(date: currentDate)
        if let existingAbsence = selectedDivision.getAbsence(for: currentDate) {
            absence = existingAbsence
        } else {
            selectedDivision.absences.append(absence)
        }
        
        guard let vc = storyboard?.instantiateViewController(identifier: "DivisionAbsenceViewController", creator: { coder in
            return DivisionAbsenceViewController(coder: coder, division: selectedDivision, absence: absence)
        }) else {
            fatalError("Failed to load Division Absence View Controller from Storyboard")
        }

        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func previousDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: -1, to: currentDate) ?? Date()
        updateDateDisplay()
        tableView.reloadData()
    }
    
    @IBAction func nextDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: +1, to: currentDate) ?? Date()
        updateDateDisplay()
        tableView.reloadData()
    }
    
    func updateDateDisplay() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        navigationItem.title = formatter.string(from: currentDate)
    }

    func addDummyData() {
        divisions.append(DivisionFactory.createDivision(code: "BY-1", of: 8))
        divisions.append(DivisionFactory.createDivision(code: "BY-2", of: 9))
        divisions.append(DivisionFactory.createDivision(code: "BY-3", of: 10))
    }

}

