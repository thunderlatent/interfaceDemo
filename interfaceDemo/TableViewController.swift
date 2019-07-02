//
//  TableViewController.swift
//  interfaceDemo
//
//  Created by 陳裕銘 on 2019/6/26.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    {
        didSet
        {
            self.collectionView.backgroundColor = .clear
        }
    }
    
    
   
    /**
     * 第一部分
     * 在tableViewCell裏面添加了一個collectionView，實現了5個collectionCell
     * 每一個cell裏面有一個標題，副標題，背景圖片以及分類標簽
     */
    
    private var images = [imageViewCollection(image: UIImage(named: "0"), title: "天空", general: "天", subTitle: ""), imageViewCollection(image: UIImage(named: "1"), title: "樹林", general: "樹",subTitle: "一些樹"), imageViewCollection(image: UIImage(named: "2"), title: "荒野", general: "荒",subTitle: ""), imageViewCollection(image: UIImage(named: "3"), title: "草原", general: "草",subTitle: "很多草"),
    imageViewCollection(image: UIImage(named: "4"), title: "湖邊", general: "湖", subTitle: "紫色的湖")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! tableViewcellCollectionViewCell
        cell.imageView.image = images[indexPath.row].image
        cell.generalLabel.text = images[indexPath.row].general
        cell.titleLabel.text = images[indexPath.row].title
        cell.subTitleLabel.text = images[indexPath.row].subTitle
        
        if images[indexPath.row].subTitle == ""
        {
            cell.subTitleLabel.isHidden = true
        }
        
        cell.layer.cornerRadius = 25
        cell.clipsToBounds = true
        return cell
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
