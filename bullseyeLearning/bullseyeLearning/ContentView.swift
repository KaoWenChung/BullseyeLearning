import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    @State var score = 0
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Put the Bullseye as close as you can to:")
                Text("\(target)")
            }
            Spacer()
            HStack{
                Text("1")
                Slider(value: $sliderValue, in:1...100)
                Text("100")
            }
            Button(action: {
                print("Button Press!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible){ ()-> Alert in
                return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(sliderValueRounded()).\n" +
                "scored \(pointsForCurrentRound()) points this round."
                ), dismissButton: .default(Text("Awesome!")){
                    self.score = self.score + self.pointsForCurrentRound()
                    self.target = Int.random(in: 1...100)
                    })
                }
            Spacer()
            HStack{
                Button(action:{
                print("press Start Over!")
                }){
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("\(score)")
                Spacer()
                Text("Round:")
                Text("999")
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
    func pointsForCurrentRound()->Int{
        100 - abs(target - sliderValueRounded())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414 ))
    }
}

