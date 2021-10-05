//
//  MiniItiView.swift
//  ItiSimulator
//
//  Created by Giovanni Vicentin Moratto on 04/10/21.
//

import Foundation

class MiniItiView {
    
    // MARK: - Methods
    
    func showTitle() {
        print("\n _____________________________________________ ")
        print("|                                             |")
        print("|                  MINI ITI                   |")
        print("|_____________________________________________|")
    }
    
    func showMenu() {
        print("|                                             |")
        print("|   Bem vindo(a)!                             |")
        print("|   O que deseja fazer ?                      |")
        print("|                                             |")
        print("|   0 - Voltar                                |")
        print("|   1 - PIX                                   |")
        print("|   2 - Cartão de Crédito iti                 |")
        print("|   3 - Pagar e Transferir                    |")
        print("|   4 - Colocar Dinheiro                      |")
        print("|   5 - Gerenciar Cartões                     |")
        print("|   6 - Acessar Perfil                        |")
        print("|                                             |")
    }
    
    func status(firstName: String?, lastName: String?, balance: Double?) {
        guard let firstNameUnwrapped = firstName else { return }
        guard let lastNameUnwrapped = lastName else { return }
        guard let balanceUnwrapped = balance else { return }
        
        let username = "\(firstNameUnwrapped) \(lastNameUnwrapped)"
        print("                       \(username)")
        print("                       Saldo: \(balanceUnwrapped)")
    }
    
    func getInput() -> String? {
        let input = readLine()
        print()
        return input
    }
    
}
