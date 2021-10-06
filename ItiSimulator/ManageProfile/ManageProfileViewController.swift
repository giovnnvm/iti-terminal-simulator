//
//  ProfileViewController.swift
//  ItiSimulator
//
//  Created by Giovanni Vicentin Moratto on 05/10/21.
//

import Foundation

class ManageProfileViewController {
    
    // MARK: - Attributes
    
    let scene = ManageProfileView()
    
    // MARK: - Methods
    
    func process(user: UserModel?) {
        guard let userUnwrapped = user else { return }
        
        var loop = true
        
        while loop {
            scene.showTitle()
            scene.showMenu()
            
            guard let inputString = scene.getInput() else { return }
            let input = Int(inputString)
            
            switch input {
            case 0:
                loop = false
            case 1:
                // Exibir informações
                DisplayProfileViewController().process(user: userUnwrapped)
            case 2:
                // Editar informações
                EditProfileViewController().process(user: userUnwrapped)
            case 3:
                // Excluir conta
                DeleteAccountViewController().process(user: userUnwrapped)
            default:
                print("Por favor, escolha uma operação")
            }
        }
    }
}