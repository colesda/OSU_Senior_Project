/*
Copyright [2015] [Remcho Research]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import UIKit

class TakeMeasurement: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
 
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var tableView: UITableView!
    var items: [String] = ["Model 0", "Model 1", "Model 3"]

    @IBOutlet weak var modelSelected: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Test Requirement #2: 'Take a Measurement' Loaded")
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    @IBAction func chooseImageFromPhotoLibrary(sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        presentViewController(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imageView.image = (info[UIImagePickerControllerOriginalImage] as UIImage)
        dismissViewControllerAnimated(true, completion: nil)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Model \(indexPath.row) Selected")
        modelSelected.text = "Model \(indexPath.row) Selected"
        model.modelTest = indexPath.row
        //unwindToList(segue: SampleOutput)
    }
    
}








