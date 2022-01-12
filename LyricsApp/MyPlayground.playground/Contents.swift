import Foundation

if let urlString = "https://api.musixmatch.com/ws/1.1/track.search?q_artist=JSheon&apikey=a7da9954eaa5bec4a6cda5cb9844ddd6".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
let url = URL(string: urlString){
    URLSession.shared.dataTask(with: url){ data, response, error in
//        if let data = data {
//            do{
//                let decoder = JSONDecoder()
//                decoder.dateDecodingStrategy = .iso8601
//                let searchResponse = try decoder.decode(SearchResponse.self, from:data)
//                print(searchResponse)
//            }catch{
//                print(error)
//            }
//        else{
//            //show error
//        }
//            }
//        let content = String(data: data, encoding: .utf8){
//            print("GET Json:",content)
    }.resume()
    print("task resume")
}
	
