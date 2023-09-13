//
//  ProfileView.swift
//  TestPage
//
//  Created by Meet's Mac on 12/09/23.
//

import SwiftUI

struct ProfileView: View {
//    @State private var NextPageView = false
    var body: some View {
        VStack (alignment: .leading,spacing: 20){
            
        VStack{
                  searchView
              }
            ScrollView {
                VStack{
                    ImageView
            
                    infoView
            
                    buttonView
            
                    detailsView
            
                    lineView
            
                    ProgressView
              
                    summaryView
              
                    lineView
              
                    analyticsView
              
                    ResourcesView
                    
                }
            }
           
//            ScrollView {
                
                     
                
                   //   ResourcesView
                
//                }
              MainTab()
            }
        }
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
                
                Text("Shubham Ramani")
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
            
            Spacer()
            Image(systemName: "gear")
                .padding(.trailing)
        }
        .padding(.top)
    }
    
    var ImageView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.black)
                .frame(height: 100)
            
            HStack (alignment: .top){
                Image("national-park 1")
                    .clipShape(Circle())
                    .frame(width: 75, height: 75)
                    .offset(x: 20, y: 20)
                
                
                Spacer()
                Image(systemName: "medical.thermometer")
                    .foregroundColor(.white)
                    .padding(.trailing)
                    .frame(width: 30, height: 30)
                    .overlay(Circle().stroke(Color.white))
            }
        }
        .padding()
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
                }
                
                HStack {
                    Text("Sr.iOS Mobile app developer")
                        .font(.subheadline)
                        .foregroundColor(Color(.black)).opacity(0.8)
                    Spacer()
                }
                
                VStack {
                    HStack {
                        Text("J p dawer collage")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Surat,Gujarat,India")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                }
                .padding(1)
                
                HStack {
                    Text("500+ connections")
                        .font(.caption)
                        .foregroundColor(.blue)
                    Spacer()
                }
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

            Button {
                
            } label: {
                Text("...")
                    .font(.subheadline).bold()
                    .foregroundColor(.blue)
                    .frame(width: 40, height: 32)
                    .overlay(Circle().stroke(Color(.systemBlue)))
            }

        }
        .padding(.leading)
    }
    
    var detailsView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.lightText)
                .frame(width: 350, height: 70)
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
            }

            .padding(.leading)
        }
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue,lineWidth: 0.75))
        .padding(.trailing)
        .padding(.leading)
    }
    
    var lineView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.orange).opacity(0.10)
                .frame(width: 400, height: 10)
        }
    }
    
    var ProgressView: some View {
        VStack(spacing: 3) {
            VStack {
                HStack {
                    Text("Suggested for you")
                        .font(.headline)
                    Spacer()
                }
            }
            .padding(.leading)
            
            HStack(spacing: 5) {
                Image(systemName: "eye.fill")
                Text("Private to you")
                Spacer()
            }
            .padding(.leading)
            .font(.subheadline)
            .foregroundColor(.gray)
            //progress
            VStack {
                HStack {
                    Text("Intermediate")
                    Spacer()
                }
                
                HStack {
                    SwiftUI.ProgressView(value: 50, total: 100)
                        .scaleEffect(x: 1, y: 5, anchor: .center)
                    
                    Text("5/7")
                }
                
                HStack(spacing: 5) {
                    Text("Complete 3 Step to achieve")
                    //Spacer()
                    
                    Text("All-star")
                        .foregroundColor(.blue).bold()
                    Spacer()
                }
                .font(.subheadline)
            }.padding(.leading)
             .padding(.trailing)
        }
    }
    
    var summaryView: some View {
        ZStack {
            Color(.lightText)
                .frame(width: 350, height: 100)
            
            VStack(spacing: 15) {
                HStack {
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
            
            VStack(spacing: 1) {
                HStack(spacing: 1) {
                    Text("Analytics")
                        .font(.headline)
                    Spacer()
                }.padding(.leading)
                
                HStack(spacing: 3) {
                    Image(systemName: "eye.fill")
                    
                    Text("Private to you")
                    Spacer()
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding(.leading)
        
            HStack {
                Image(systemName: "person.2")
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
                Image(systemName: "magnifyingglass")
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
        VStack {
            VStack(spacing: 8) {
                Color(.orange).opacity(0.10)
                    .frame(width: 400, height: 10)
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
                    Image(systemName: "magnifyingglass")
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
            }
            .padding(.leading)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
