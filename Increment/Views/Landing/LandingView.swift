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
                    
                    if #available(iOS 14.0, *) {
                        NavigationLink(destination: CreateNewExerciseView(), isActive: self.$isActive) {
                            Button(action: {
                                self.isActive = true
                            }) {
                                HStack(spacing: 15) {
                                    Spacer()
                                    Image(systemName: LandingConstants.landingImageSystemButtonName)
                                        .font(.system (size: LandingConstants.landingImageSystemButtonNameSize, weight: .semibold))
                                        .foregroundColor(Color(.white))
                                    Text(LandingConstants.landingButtonCreateNewIncreaseTitleText)
                                        .font(.system (size: LandingConstants.landingImageSystemButtonNameSize))
                                        .foregroundColor(Color(.white))
                                    Spacer()
                                }
                            }
                            .padding(CommonsConstants.paddingBottomViews)
                            .buttonStyle(PrimaryButtonStyle())
                        }
                    } else {
                        // Fallback on earlier versions
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
//        LandingView().previewDevice("iPhone SE")
//        LandingView().previewDevice("iPhone 8")
        LandingView().previewDevice("iPhone 11 Pro Max")
    }
}
