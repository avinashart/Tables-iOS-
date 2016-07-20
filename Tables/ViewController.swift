import UIKit

class ViewController: UIViewController,UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    
    @IBAction func goButton(sender: AnyObject) {
        textField.resignFirstResponder()
        sliderValue.setValue(Float(textField.text!)!, animated: true)
        table.reloadData()
    }
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
        textField.text = String(Int(sliderValue.value))
    }
    
    
    
    //Working with tables
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        let value = Int(sliderValue.value)
        
        let result = String( value * (indexPath.row + 1))
        cell.textLabel?.text = "\(value) x \(indexPath.row+1) = \(result)"
        
        return cell
    }
  
    
   
    
}

