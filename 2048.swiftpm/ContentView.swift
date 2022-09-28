import SwiftUI

struct ContentView: View {
    @State private var board=[[0,0,0,0,0],[0,1,0,0,1],[0,4,3,3,2],[6,7,6,5,4],[10,9,7,4,3]]
    @State private var  w1:CGFloat=54
    @State private var  w2:CGFloat=90
    @State private var  h2:CGFloat=48
    @State private var  h3:CGFloat=145
    let font = "ChalkboardSE-Bold"
    var body: some View {
        HStack{
            VStack{
                ZStack{
                    block(val:11 , width: w2, height: w2,radius:20)
                    
                    VStack{
                        Text("SCORE")
                            .foregroundColor(Color.white)
                            .font(.custom(font, size: 20))
                        Text("15140")
                            .foregroundColor(Color.white)
                            .font(.custom(font, size: 23))
                    }
                    
                }
                ZStack{
                    block(val:11 , width: w2, height: h2,radius:20)
                    Image(systemName: "goforward")
                        .foregroundColor(Color.white)
                        .font(.system(size: 25, weight: .black))
                }
            }
            ZStack{
                block(val:12 , width: h3, height: h3,radius:20)
                Text("2048")
                    .foregroundColor(Color.white)
                    .font(.custom(font, size: 40))
                //.black()
            }
            VStack{
                ZStack{
                    block(val:11 , width: w2, height: w2,radius:20)
                    
                    VStack{
                        Text("BEST")
                            .foregroundColor(Color.white)
                            .font(.custom(font, size: 20))
                        Text("15140")
                            .foregroundColor(Color.white)
                            .font(.custom(font, size: 23))
                    }
                    
                }
                ZStack{
                    block(val:11 , width: w2, height: h2,radius:20)
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(Color.white)
                        .font(.system(size: 25, weight: .black))
                }
                
            }
        }
        Text("Join the numbers and get the 2048 tile!")
            .foregroundColor(color[11])
            .font(.custom(font, size: 12))
        ZStack{
            block(val: 8, width: 292, height: 292,radius:0)
            VStack(spacing:3.5){
                ForEach (0..<5){i in
                    HStack(spacing:3.5){
                        ForEach(0..<5){ j in
                            if board[i][j] == 0{
                                block(val: board[i][j], width: w1, height: w1,radius:3)
                            }
                            else{
                                ZStack{
                                    block(val: board[i][j], width: w1, height: w1,radius:3)
                                    Text("\(String(Int(pow(2, Double(board[i][j])))))")
                                        .foregroundColor(board[i][j] > 2 ? Color.white : color[11])
                                        .font(.custom(font, size: sz[board[i][j]]))
                                    //.bold()
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
}

