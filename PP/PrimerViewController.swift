import UIKit
import SideMenu

class PrimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define the menus
        //let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: UINavigationController)
        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers. If you're using storyboards, you'll want to do something like:
        let menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as! UISideMenuNavigationController
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        
        //let menuRightNavigationController = UISideMenuNavigationController(rootViewController: YourViewController)
        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers. If you're using storyboards, you'll want to do something like:
        // let menuRightNavigationController = storyboard!.instantiateViewController(withIdentifier: "RightMenuNavigationController") as! UISideMenuNavigationController
        //SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        
        // (Optional) Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the view controller it displays!
       // SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        //SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        // (Optional) Prevent status bar area from turning black when menu appears:
        SideMenuManager.default.menuFadeStatusBar = false

    }
    
    @IBAction func abrirMenu(_ sender: UIBarButtonItem) {
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    
}
