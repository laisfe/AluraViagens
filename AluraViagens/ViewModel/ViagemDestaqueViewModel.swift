//
//  ViagemDestaqueViewModel.swift
//  AluraViagens
//
//  Created by Lais on 13/01/23.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroLinhas: Int {
        return viagens.count
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
}
