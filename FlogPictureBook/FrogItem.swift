//
//  FrogItem.swift
//  FlogPictureBook
//
//  Created by YamamuraRyoga on 2019/11/02.
//  Copyright © 2019 y.ryoga. All rights reserved.
//

import SwiftUI

struct FrogItem: View {
    var frog: Frog
    var body: some View {
        HStack {
            Image(frog.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text(frog.name)
                .font(.title)
            if frog.hasPoison {
                Image(systemName: "burn")
            }
            Spacer()
        }
    }
}

struct FrogItem_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ContentSizeCategory.allCases, id: \.self) { category in
            FrogItem(frog: sampleFrogs[3])
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, category)
                .previewDisplayName("\(category)")
            
        }
    }
}
