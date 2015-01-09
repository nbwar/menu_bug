

import UIKit

class ViewController: UIViewController {

  let transitionManager = MenuTransitionManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.transitionManager.sourceViewController = self
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
    
    // set transition delegate for our menu view controller
    let menu = segue.destinationViewController as UIViewController
    menu.transitioningDelegate = self.transitionManager
    self.transitionManager.menuViewController = menu
    
  }
  
  @IBAction func unwindToMainViewController (sender: UIStoryboardSegue){
    self.dismissViewControllerAnimated(true, completion: nil)
  }


}

