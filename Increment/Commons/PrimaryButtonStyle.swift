import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    var fillColor: Color = .darkPrimaryColorButton
    
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration: configuration, fillColor: fillColor)
    }
    
    struct PrimaryButton: View {
        let configuration: Configuration
        let fillColor: Color
        var body: some View {
            return configuration.label
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            fillColor
                ))
        }
    }
}


struct PrimaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            
        }) {
            Text(CommonsConstants.buttonText)
        }
        .buttonStyle(PrimaryButtonStyle())
    }
}
