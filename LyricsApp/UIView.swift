//
//  UIView.swift
//  LyricsApp
//
//  Created by User19 on 2022/1/12.
//

import SwiftUI

struct UIView: View {
    @State private var  items = [TrackList]()
    var body: some View {
        List{
            //因為items陣列是從零變成抓到資料的狀態，所以要改成用id迭代取值
            ForEach(items, id: \.track.track_id){ item in
                ItemRow(item: item.track)
            }
        }
        .onAppear{
            fetchItems(searchFor: "jsheon")
            //print(items)
        }
    }
    func fetchItems(searchFor: String){
        let urlString:String? = "https://api.musixmatch.com/ws/1.1/track.search?q_artist=\(searchFor)&apikey=a7da9954eaa5bec4a6cda5cb9844ddd6".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        if let url = URL(string: urlString!){
            URLSession.shared.dataTask(with: url){ data, response, error in
                if let data = data {
                    do{
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let welcome = try decoder.decode(Welcome.self, from:data)
                        //decode出Json格式可以讀取
                        
                        items = welcome.message.body.trackList
                        print(items)
                    }catch{
                        print(error)
                    }
                }
            }.resume()
            
        //            let content = String(data: data, encoding: .utf8){
        //            print("GET Json:",content)
            
        }
    }
}

struct UIView_Previews: PreviewProvider {
    static var previews: some View {
        UIView()
    }
}
