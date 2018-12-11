import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // https://cocoapods.org/pods/SideMenu
    
    @IBOutlet weak var tabla: UITableView!
    
    let opciones: [String] = ["Opcion 1", "Opcion 2", "Opcion 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabla.delegate = self
        self.tabla.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.opciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = self.tabla.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        celda.textLabel?.text = self.opciones[indexPath.row]
        return celda
    }
}

