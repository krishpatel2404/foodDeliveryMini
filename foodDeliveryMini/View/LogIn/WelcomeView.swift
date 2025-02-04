import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Welcome\nto our store")
                    .font(.gilroy(.bold, size: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("Get your Groceries in as fast as one hour")
                    .font(.gilroy(.medium, size: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink{
                    SignInView()
                } label: {
                    Text("Get Started")
                        .font(.gilroy(.semibold, size: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width:340, height: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                }
                Spacer()
                    .frame(height: 80)
                
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack{
        WelcomeView()
    }
}
