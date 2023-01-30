//
//  DetalheViewController.swift
//  AluraViagens
//
//  Created by Lais on 28/01/23.
//

import UIKit

class DetalheViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemmLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions

    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
