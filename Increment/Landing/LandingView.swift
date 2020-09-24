import SwiftUI

struct LandingView: View {
    
    @State var isActive = false
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                VStack {
                    Spacer()
                        .frame(height: proxy.size.height * LandingConstants.percentTitle)
                    Text(LandingConstants.landingTitleText)
                        .font(.system(size:LandingConstants.landingTitleSize, design: .rounded))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .shadow(color: Color(.black), radius: 1, x: 2, y: 2)
                    Spacer()
                    
                    NavigationLink(destination: Text("navigated"), isActive: self.$isActive) {
                        Button(action: {
                            self.isActive = true
                        }) {
                            HStack(spacing: 15) {
                                Spacer()
                                Image(systemName: LandingConstants.landingImageSystemButtonName)
                                    .font(.system (size: 24, weight: .semibold))
                                    .foregroundColor(Color(.white))
                                Text(LandingConstants.landingButtonCreateNewIncreaseTitleText)
                                    .font(.system (size: 24))
                                    .foregroundColor(Color(.white))
                                Spacer()
                            }
                        }
                        .padding(.horizontal, 20)
                        .buttonStyle(PrimaryButtonStyle())
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Image(LandingConstants.landingBackgroundImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity(0.3))
                        .frame(width: proxy.size.width)
                        .edgesIgnoringSafeArea(.all)
                )
            }
        }.accentColor(.primary)
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        //        LandingView().previewDevice("iPhone 8")
        //        LandingView().previewDevice("iPhone 11")
        LandingView().previewDevice("iPhone 11 Pro Max")
    }
}
