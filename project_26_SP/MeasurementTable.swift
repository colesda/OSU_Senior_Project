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
/*
import UIKit
import AVFoundation

class MeasurementTable: UITableViewController {
    
    
    
    @IBOutlet
    var tableView: UITableView
    var names: [String] = ["We", "Heart", "Swift"]
    //var names = [Model]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.names = [Model(name: "Sample Model")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var model : Model
        model = names[indexPath.row]
        cell.textLabel?.text = model.name
        
        return cell 
    }
    
}*/