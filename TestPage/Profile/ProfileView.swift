//
//  ProfileView.swift
//  TestPage
//
//  Created by Meet's Mac on 12/09/23.
//

import SwiftUI

struct ProfileView: View {
        @State private var placeHolder = ""
        @State private var showMe = false
        @State private var showActvity = false
        @State private var shouldShowImagePicker = false
        @State private var showSettingView = false
    @State private var shouldShowImage = false
    @State var PencilImage: UIImage?
    @State private var showingAlert = false
    //@State private var SettingView = SettingsView()
        @State var image: UIImage?
    var body: some View {
        NavigationView{
        VStack (alignment: .leading,spacing: 12){
            
            VStack{
                searchView
            }
            ScrollView {
                VStack{
                    VStack {
                        ImageView
                    }
                    
                    VStack {
                        infoView
                    }
                    
                    VStack {
                        buttonView
                    }
                    
                    VStack {
                        detailsView
                    }
                    
                    VStack {
                        lineView
                    }
                    
                    VStack {
                        ProgressView
                    }
                    
                    VStack {
                        summaryView
                    }
                    
                    VStack {
                        lineView
                    }
                    
                    VStack {
                        analyticsView
                    }
                    
                    VStack {
                        lineView
                    }
                   
                }
                VStack {
                    ResourcesView
                }
                
                VStack {
                    lineView
                }
                
                VStack {
                    activityView
                }
            }
            MainTab()
        }
    }}
}

extension ProfileView {
    
    var searchView: some View {
        HStack(alignment: .top,spacing: 24) {
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(.gray)
                    .padding(.leading)
            }
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
//                Text("Shubham Ramani")
//                    .foregroundColor(.gray)
//                    .font(.subheadline)
                
                TextField("Search", text: $placeHolder)
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
            
            VStack {
                HStack {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                    }
                }.padding(.trailing)
            }
        
        }
        .padding(.top)
        .frame(height: 40)
    }
    
    var ImageView: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                Button {
                    shouldShowImage.toggle()
                } label: {
//                    Image("national-park 1")
//                        .resizable(resizingMode: .stretch)
                    VStack {
                        ZStack {
                            
                            if let PencilImage = self.PencilImage {
                                Image(uiImage: PencilImage)
                                    .resizable()
                                    .frame(height: 100)
                                    .padding(.trailing)
                                    .padding(.leading)
                                    .cornerRadius(5)
                                    .border(Color.black, width: 2)
                                    //.overlay(RoundedRectangle(cornerRadius: 35))
                            }else{
                                    Image("national-park 1")
                                        .resizable()
                                        .frame(height: 100)
                                        .border(Color.black, width: 2)
                                        .cornerRadius(5)
                                        .padding(.trailing)
                                        .padding(.leading)
                            }
                            
                            ZStack {
                                Color(.black)
                                    .cornerRadius(15)
                                    .frame(width: 30, height: 30)
                                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 2))
                                
                                Image(systemName: "pencil")
                                    .foregroundColor(.white)
                            }.padding(.leading,300)
                                .padding(.bottom,50)
                            
                        }
                        
                    }
                }
                
                HStack (alignment: .top){
                    Button {
                        showingAlert = true
                    } label: {
                        VStack {
                            if let image = self.image {
                                Image(uiImage: image)
                                    .resizable()
                                    .frame(width: 90, height: 90)
                                    .cornerRadius(45)
                                    .overlay(Circle().stroke(Color.black,lineWidth: 2))
                                    .offset(x: 20, y: 20)
                                    
                                    //.overlay(RoundedRectangle(cornerRadius: 35))
                            }else{
                                    
                                    Image("national-park 1")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(45)
                                        .overlay(Circle().stroke(Color.black,lineWidth: 2))
                                        .offset(x: 20, y: 20)
                                }
                        }
                    }
                                .alert(isPresented: $showingAlert) {
                                    () -> Alert in
                                    Alert(title: Text("Image"), message: Text("Are you sure you want to change image?"), primaryButton: .destructive(Text("yes"), action: {
                                        shouldShowImagePicker.toggle()
                                    }), secondaryButton:.cancel(Text("No")))
                                }

                    Spacer()
                   
                        
                }
            }

        }
        .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
            ImagePicker(image: $image)
                .ignoresSafeArea()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover(isPresented: $shouldShowImage, onDismiss: nil) {
            PencilImagePicker(PencilImage: $PencilImage)
                .ignoresSafeArea()
        }
    }
    
    var infoView: some View {
        VStack {
            VStack {
                HStack(spacing: 5) {
                    Text("Shubham Ramani")
                        .font(.headline).bold()
                    
                    Text("(He/Him)")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer()
                }.padding(.leading)
                
                HStack {
                    Text("Sr.iOS Mobile app developer")
                        .font(.subheadline)
                        .foregroundColor(Color(.black)).opacity(0.8)
                    Spacer()
                }.padding(.leading)
                
                VStack {
                    HStack {
                        Text("J p dawer collage")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding(.leading)
                    
                    HStack {
                        Text("Surat,Gujarat,India")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding(.leading)
                }
                .padding(1)
                
                HStack {
                    Text("500+ connections")
                        .font(.caption)
                        .foregroundColor(.blue)
                    Spacer()
                }.padding(.leading)
            }
        }
        .padding()
    }
    
    var buttonView: some View {
        HStack (spacing: 13){
            Button {
                
            } label: {
                Text("Open to")
                    .font(.subheadline).bold()
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(.systemBlue)))
            }
            
            Button {
                
            } label: {
                Text("Add section")
                    .font(.subheadline).bold()
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(.systemBlue)))
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text("...")
                        .font(.subheadline).bold()
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 32)
                        .overlay(Circle().stroke(Color(.systemBlue)))
                }
            }.padding(.trailing)
            
        }
        .padding(.leading)
    }
    
    var detailsView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.lightText)
            HStack {
                VStack (spacing: 5){
                    Text("Open to work")
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding(.trailing)
                    
                    Text("iOS App Developer")
                        .foregroundColor(.black)
                        .font(.caption)
                    
                    Button {
                        
                    } label: {
                        Text("Show details")
                            .foregroundColor(.blue).bold()
                            .font(.subheadline)
                    }
                    
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "pencil")
                        .padding(.trailing)
                }
            }.padding(.leading)
            
        }
        .frame(width: 360, height: 70)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue,lineWidth: 0.75))
        .padding(.trailing)
        .padding(.leading)
    }
    
    var lineView: some View {
        ZStack {
            VStack {
                Color(.orange).opacity(0.2)
            }
        }
    }
    
    var ProgressView: some View {
        VStack(spacing: 3) {
            VStack {
                HStack {
                    Text("Suggested for you")
                        .font(.headline)
                    Spacer()
                }.padding(.leading)
                
                HStack(spacing: 3) {
                    Image(systemName: "eye.fill")
                    
                    Text("Private to you")
                    Spacer()
                }.padding(.leading)
                .foregroundColor(.gray)
                .font(.caption)
                
            }.padding(.leading)
            
            //progress
            VStack {
                HStack {
                    Text("Intermediate")
                    Spacer()
                }.padding(.leading)
                
                HStack {
                    SwiftUI.ProgressView(value: 50, total: 100)
                        .scaleEffect(x: 1, y: 5, anchor: .center)
                    
                    Text("5/7")
                }.padding(.leading)
                .padding(.trailing)
                
                HStack(spacing: 5) {
                    Text("Complete 3 Step to achieve")
                    //Spacer()
                    
                    Text("All-star")
                        .foregroundColor(.blue).bold()
                    Spacer()
                }.padding(.leading)
                .font(.subheadline)
            }.padding(.leading)
            .padding(.trailing)
        }
    }
    
    var summaryView: some View {
        ZStack {
            Color(.lightText)
                .frame(width: 300, height: 100)
            
            VStack(spacing: 5) {
                HStack(spacing: 5) {
                        Image("national-park 1")
                    
                    Text("Write a summary to highlight your personality or work experience")
                        .font(.subheadline)
                }
                Text("Members who include a summary receive up to 3.9 times as many profile views")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Add a summary")
                            .foregroundColor(Color(.black)).opacity(0.7)
                            .frame(width: 150, height: 35)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black)).opacity(0.7)
                    }
                    Spacer()
                }
                
                
            }.padding(.leading)
                .padding(.trailing)
        }
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4),lineWidth: 0.75))
        .padding(.trailing)
        .padding(.leading)
    }
    
    var analyticsView: some View {
        VStack(spacing: 8) {
            
            VStack() {
                HStack(spacing: 3) {
                    Text("Analytics")
                        .font(.headline)
                    Spacer()
                }.padding(.leading)
                
                HStack(spacing: 3) {
                    Image(systemName: "eye.fill")
                    
                    Text("Private to you")
                    Spacer()
                }.padding(.leading)
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding(.leading)
            
            HStack {
                HStack {
                    Image(systemName: "person.2")
                }.padding(.leading)
                VStack {
                    HStack {
                        Text("18 profile views")
                            .font(.subheadline)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Discover who's viewed your profile.")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding(.leading)
            
            Divider()
            
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                }.padding(.leading)
                VStack {
                    HStack {
                        Text("7 search appearances")
                            .font(.subheadline)
                        Spacer()
                    }
                    
                    HStack {
                        Text("see how often you appear in search results")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding(.leading)
        }
    }
 
    var ResourcesView: some View {
        VStack() {
            VStack(spacing: 8) {
                VStack {
                    HStack {
                        Text("Resources")
                            .font(.headline)
                        Spacer()
                    }.padding(.leading)
                    
                    HStack {
                        HStack(spacing: 3) {
                            Image(systemName: "eye.fill")
                            
                            Text("Private to you")
                            Spacer()
                        }.padding(.leading)
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                }
                HStack {
                    HStack {
                        Image(systemName: "dot.radiowaves.left.and.right")
                    }.padding(.leading)
                    VStack {
                        HStack {
                            Text("Creator mode")
                                .font(.subheadline)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Get discovered ,showcase content on your profile, and get access to creator tools")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Spacer()
                        }.padding(.trailing)
                    }
                    Spacer()
                }
                
                Divider()
                
                HStack {
                    HStack {
                        Image(systemName: "person.2")
                    }.padding(.leading)
                    VStack {
                        HStack {
                            Text("My network")
                                .font(.subheadline)
                            Spacer()
                        }
                        HStack {
                            Text("See and manage your connections and interests")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Spacer()
                        }.padding(.trailing)
                    }
                }
                
                Divider()
                
                HStack(spacing: 10) {
                    VStack {
                        Button {
                            showMe.toggle()
                        } label: {
                            if showMe {
                                
                            }else{
                                Text("Show all 5 resources")
                                    .foregroundColor(.black)
                            }
                        }

                        if showMe {
                            VStack {
                                HStack {
                                    Image(systemName: "person.2")
                                    
                                    Text("See and manage your connections and interests")
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                    
                                    Spacer()
                                }.padding(.leading)
                                
                                Divider()
                                
                                HStack {
                                    Image(systemName: "dot.radiowaves.left.and.right")
                                    
                                    Text("Get discovered ,showcase content on your profile, and get access to creator tools")
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                    
                                    Spacer()
                                }.padding(.leading)
                                
                                Divider()
                                
                                Button("Show less") {
                                    showMe = false
                                }.foregroundColor(.black)
                            }
                        }else {
                            
                        }
                        
                        }
                    }
                }
//                .font(.subheadline)
//                .foregroundColor(.gray).opacity(1.5)
            }
            .padding(.leading)
        }
    var activityView: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Activity")
                            .font(.headline).bold()
                        Spacer()
                    }.padding(.leading)
                    
                    HStack {
                        Text("99 followers")
                            .font(.caption)
                            .foregroundColor(Color(.systemBlue))
                            
                        Spacer()
                    }.padding(.leading)
                }
                
                HStack(spacing: 1) {
                    Button {
                        
                    } label: {
                        ZStack {
                            HStack {
                                Text("Create a post")
                                    .font(.subheadline).bold()
                                    .foregroundColor(Color(.systemBlue))
                                    .frame(width: 100, height: 30)
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue))
                            }.padding(.trailing)
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "pencil")
                                .foregroundColor(.black)
                        }.padding(.trailing)
                    }
                }
                
            }.padding(.leading)
            VStack {
                HStack {
                    Text("You haven't posted yet")
                        .font(.subheadline).bold()
                    
                    Spacer()
                }.padding(.leading,32)
                
                HStack {
                    Text("Posts you share will be displayed here.")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Spacer()
                }.padding(.leading,32)
                
                Divider()
                
                HStack(spacing: 10) {
                    VStack {
                        ZStack {
                            Button("Show all activity ->") {
                                
                                showActvity.toggle()
                                    
                            }
                        }
                        .foregroundColor(.black)
                        if showActvity {
                            HStack {
                                Image(systemName: "person.2")
                                
                                Text("See and manage your connections and interests")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                
                                Spacer()
                            }.padding(.leading)
                            
                            Divider()
                            
                            HStack {
                                Image(systemName: "dot.radiowaves.left.and.right")
                                
                                Text("Get discovered ,showcase content on your profile, and get access to creator tools")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                
                                Spacer()
                            }.padding(.leading)
                        }else {
                            
                        }
                        
                        }
                    }
            }
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image: UIImage?
    
    private let controller = UIImagePickerController()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePicker
        
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent.image = info[.originalImage] as? UIImage
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct PencilImagePicker: UIViewControllerRepresentable {
    
    @Binding var PencilImage: UIImage?
    
    private let controller = UIImagePickerController()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: PencilImagePicker
        
        init(parent: PencilImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent.PencilImage = info[.originalImage] as? UIImage
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
