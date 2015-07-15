
import Foundation
import UIKit
class Dogs: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let tableData = ["One","Two","Three"]
    @IBOutlet weak var PhoneT: UITextField!
    @IBOutlet weak var Dogg: UILabel!
    @IBOutlet weak var DogNameT: UITextField!
    @IBOutlet weak var Connect: UIButton!
    @IBOutlet weak var Dog: UITableView!
    @IBOutlet weak var DoggName: UITableView!
    @IBAction func Add(sender: AnyObject) {
        self.view.viewWithTag(4)?.hidden = true
        self.view.viewWithTag(1)?.hidden = false
        self.view.viewWithTag(2)?.hidden = false
        self.view.viewWithTag(3)?.hidden = false
        var newDogNumber = PhoneT.text
        var newDogName = DogNameT.text
        println (newDogName)
        println (newDogNumber)
        println(count(newDogName))
        if (count(newDogName) > 0){
        println(newDogName.substringToIndex(advance(newDogName.startIndex,count(newDogName) - 3)))
            
            }
            }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    func tableView(tableView: UITableView!, numberOfSections: Int) -> Int{
        return 1
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.tableData.count;
    }
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
    }
    @IBAction func Delete(sender: AnyObject) {
       self.view.viewWithTag(4)?.hidden = false
       self.view.viewWithTag(1)?.hidden = true
        self.view.viewWithTag(2)?.hidden = true
        self.view.viewWithTag(3)?.hidden = true
    }
    
}
