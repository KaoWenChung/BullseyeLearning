import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    @State var score = 0
    @State var round = 1
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Put the Bullseye as close as you can to: ")
                Text("\(target)")
            }
            Spacer()
            HStack{
                Text("1")
                Slider(value: $sliderValue, in:1...100)
                Text("100")
            }
            Spacer()
            Button(action: {
                print("Button Press!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible){ ()-> Alert in
                return Alert(title: Text(alertTitle()), message: Text("The slider's value is \(sliderValueRounded()).\n" +
                "scored \(pointsForCurrentRound()) points this round."
                ), dismissButton: .default(Text("Awesome!")){
                    self.score = self.score + self.pointsForCurrentRound()
                    self.target = Int.random(in: 1...100)
                    self.round += 1
                    })
                }
            Spacer()
            HStack{
                Button(action:{
                print("press Start Over!")
                    self.startNewGame()
                }){
                    Text("Start Over")
                    }
                Spacer()
                Text("Score:")
                Text("\(score)")
                Spacer()
                Text("Round:")
                Text("\(round)")
                Spacer()
                Button(action:{
                    print("press Info")
                    }){ Text("Info") }
                    }
            .padding(.bottom,20)
            }
}
    func sliderValueRounded()->Int{
        Int(sliderValue.rounded())
    }
    func amountOff()->Int{
        abs(target - sliderValueRounded())
    }
    func startNewGame(){
        score = 0
        round = 1
        sliderValue = 50.0
        target = Int.random(in: 1...100)
    }
    func pointsForCurrentRound()->Int{
        var points = 0
        if 100 - amountOff() == 100{
            points = 200
        }else if 100 - amountOff() == 99{
            points = 149
        }else{
            points = 100 - amountOff()
        }
        return points
    }
    func alertTitle()->String{
        let difference = amountOff()
        let title:String
        if difference == 0{
            title = "perfect!"
        }else if difference < 5 {
            title = "You almost had it!"
        }else if difference <= 10{
            title = "Not bad."
        }else{
            title = "Are you even trying?"
        }
        return title
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414 ))
    }
}

