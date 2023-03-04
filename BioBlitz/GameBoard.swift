//
//  GameBoard.swift
//  BioBlitz
//
//  Created by Chris Hand on 2023.03.04.
//

import SwiftUI

class GameBoard: ObservableObject {
    let rowCount = 11
    let columnCount = 22
    
    @Published var grid = [[Bacteria]]()
    
    init() {
        reset()
    }
    
    func reset() {
        grid.removeAll()
        for row in 0..<rowCount {
            var newRow = [Bacteria]()
            
            for col in 0..<columnCount {
                let bacteria = Bacteria(row: row, col: col)
                newRow.append(bacteria)
            }
            
            grid.append(newRow)
        }
        
        grid[0][0].color = .green
        grid[rowCount - 1][columnCount - 1].color = .red
    }
}
