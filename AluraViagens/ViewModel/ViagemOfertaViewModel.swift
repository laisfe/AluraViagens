//
//  ViagemOfertaViewModel.swift
//  AluraViagens
//
//  Created by Lais on 15/01/23.
//

import Foundation

class ViagemOfertaViewModel: ViagemViewModel {
    var tituloSessao: String {
        return "Ofertas"
    }
    
    var tipo: ViagemViewModelType {
        return .ofertas
    }
    
    var viagens: [Viagem]
    
    var numeroLinhas: Int {
        return 1
    }
    
    // MARK: - Inicializador
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
}
