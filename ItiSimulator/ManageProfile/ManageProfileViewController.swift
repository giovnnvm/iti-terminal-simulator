//
//  ProfileViewController.swift
//  ItiSimulator
//
//  Created by Giovanni Vicentin Moratto on 05/10/21.
//

import Foundation

class ManageProfileViewController {
    
    // MARK: - Methods
    
    func process(user: UserModel?) {
        guard let userUnwrapped = user else { return }
        
        var loop = true
        
        while loop {
            view.manageProfile().showTitle()
            view.manageProfile().showMenu()
            
            guard let input = view.label().getInput() else { return }
            let option = Int(input)
            
            switch option {
            case 0:
                loop = false
            case 1:
                // Exibir informações
                controller.displayProfile(user: userUnwrapped)
            case 2:
                // Editar informações
                controller.editProfile(user: userUnwrapped)
            case 3:
                // Excluir conta
                controller.deleteAccount(user: userUnwrapped)
            default:
                print("Por favor, escolha uma operação")
            }
        }
    }
}
