
import SwiftUI

struct CreateNewExerciseView: View {
    @State var isActive = false
    var body: some View {
        ScrollView {
            VStack {
                DropDownButton()
                DropDownButton()
                DropDownButton()
                DropDownButton()
                Spacer()
                NavigationLink (
                    destination: RemindView(),
                    isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }) {
                        Text(CreateNewExerciseConstants.createNewExerciseButtonTitle)
                            .font(.system(size: CreateNewExerciseConstants.createNewExerciseButtonTitleSize, weight: .medium, design: .rounded))
                    }
                }
            }
            .navigationBarTitle(CreateNewExerciseConstants.createNewExerciseNavigationBarTitle)
            .navigationBarBackButtonHidden(true)
            .padding(.bottom, CommonsConstants.paddingBottomViews)
        }
    }
}

struct CreateNewExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewExerciseView()
    }
}
