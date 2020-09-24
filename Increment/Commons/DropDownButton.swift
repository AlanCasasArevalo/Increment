
import SwiftUI

struct DropDownButton: View {
    var body: some View {
        VStack {
            HStack {
                Text("Exercise")
                    .font(.system(size: 22, weight: .semibold, design: .rounded))
                Spacer()
            }
            .padding(.vertical, 16)
            Button(action: {}) {
                HStack{
                    Text("Pushups")
                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                        .font(.system(size: 24, weight: .medium))
                }
            }
            .buttonStyle(PrimaryButtonStyle())
        }
    }
}

struct DropDownButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DropDownButton()
        }.environment(\.colorScheme, .light)
        NavigationView{
            DropDownButton()
        }.environment(\.colorScheme, .dark)
    }
}
