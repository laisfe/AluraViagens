//
//  ViagemViewModel.swift
//  AluraViagens
//
//  Created by Lais on 13/01/23.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroLinhas: Int { get }
}
