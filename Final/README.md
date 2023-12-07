# Instruction
______
## Topic01
1. Opening project
2. Clicking assets
3. Right click AppIcon and then choose `Show in Finder`
4. Replacing exist AppIcon.appiconset with new one
5. Adding a TableView and set all margins to 0
6. Adding a TableViewCell and Update identifier to `cell`
7. Adding Delegate and Datasource to TableView
8. Dragging images to Assets
    8. Adjusting the size of TableViewCell, then adding UIImageView and label, making them compatible with each other
    9. Adjusting the constraints
    ... 
9. Creating Cocoa Touch class, select UITableViewCell as parent class
10. Adjusting the height of Cell  to 250px, and adding UIImageView and label, then adding constraints to them
11. `Control Drag AND Drop` Cell and label to UITableViewCell class
12. Go to Main and extends UITableViewDelegate and UITableViewDataSource
13. Overwriting two tableView methods, embeding nib file and images, updating 

## Topic02
1. Adding Navigation Controller 
2. Addting title and Bar Button Item to Main Screen
3. `Control Drag AND Drop` Bar Button Item/ Button to ViewController, then creating UIAlertController and adding corresponding action with UIAlertAction and textField
4. Avoding the case when textField is empty using guard let name = ... else {return}
5. Adding a TableView and set all margins to 0
6. Adding a TableViewCell and Update identifier to `cell`
7. Adding Delegate and Datasource to TableView
8. Iterating TableViewCell with corresponding names and phones

## Topic03
1. Creating a segue for user input and protocol for sending data to Main ViewController 
2. Two ways to show a segue
    - `Control Drag AND Drop` the whole ViewController to segue, clicking `show` on drop down box, and adding performSegue in action of Bar Button Item  
    - `Control Drag AND Drop` Bar Button Item to segue and clicking `show`on drop down box, storing data in realm when user input is ready on segue, and reloading tableView and querying data from realm after segue was poped out

## Topic04
1. Querying stock data from api, reloading tableView when data is ready
