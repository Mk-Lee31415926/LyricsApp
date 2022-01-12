//
//  ItemRow.swift
//  LyricsApp
//
//  Created by User19 on 2022/1/12.
//

import SwiftUI

struct ItemRow: View {
    let item: Track
    var body: some View {
        VStack(alignment:.leading){
            Text(item.track_name)
            Text(item.artist_name)
            Text(item.album_name)
            Text("\(item.updated_time)")
        }
    }
}

//struct ItemRow_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemRow()
//    }
//}
