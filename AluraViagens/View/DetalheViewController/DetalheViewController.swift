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
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    
    // MARK: - Atributos
    var viagem: Viagem?
    
    // MARK: - View life cycle
    
    class func instanciar(_ viagem: Viagem) -> DetalheViewController {
        let detalhesViewController = DetalheViewController(nibName: String(describing: self), bundle: nil)
        detalhesViewController.viagem = viagem
        
        return detalhesViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraView()
    }
    
    func configuraView() {
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        //Cria risco em cima de label
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
        precoSemDescontoLabel.attributedText = atributoString
        
        if let numeroDias = viagem?.diaria, let nummeroHospedes = viagem?.hospedes {
            let diarias = numeroDias == 1 ? "Diaria" : "Diarias"
            let hospedes = nummeroHospedes == 1 ? "Pessoa" : "Pessoas"
            
            diariaViagemLabel.text = "\(numeroDias) \(diarias) - \(nummeroHospedes) \(hospedes)"
        }
    }
    
    // MARK: - Actions

    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
