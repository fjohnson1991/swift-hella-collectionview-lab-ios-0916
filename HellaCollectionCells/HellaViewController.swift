//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var hellaCollectionView: UICollectionView!
    var fibonacciNumArray: [Int] = [0,1,1]
    var numArray: [Int] = []

    override func viewDidLoad() {
    // Do any additional setup after loading the view, typically from a nib.
        findFibonacciNum()
        numbersArray()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath) as! NumCollectionViewCell
        cell.numLabel.text = String(numArray[indexPath.item])
        if fibonacciNumArray.contains(indexPath.item) {
            cell.backgroundColor = UIColor.purple
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    
    func numbersArray() {
        for i in 0...1000 {
            numArray.append(i)
        }
    }
    
    
    func findFibonacciNum(){
        while fibonacciNumArray.count < 90 {
            var count = fibonacciNumArray.count
            let lastNumIndex = count - 1
            let secondToLastNumIndex = count - 2
            let secondToLastNum = fibonacciNumArray[secondToLastNumIndex]
            let lastNum = fibonacciNumArray[lastNumIndex]
            let numToAdd = lastNum + secondToLastNum
            print(numToAdd)
            fibonacciNumArray.append(numToAdd)
            count += 1
        }
    }
}

