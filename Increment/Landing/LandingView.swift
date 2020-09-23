import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer()
                    .frame(height: proxy.size.height * 0.25)
                Text("Increment")
                    .font(.system(size: 64, design: .rounded))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .shadow(color: Color(.black), radius: 1, x: 2, y: 2)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image(LandingConstants.landingBackgroundImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
                .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        //        LandingView().previewDevice("iPhone 8")
        //        LandingView().previewDevice("iPhone 11")
        LandingView().previewDevice("iPhone 11 Pro Max")
    }
}
