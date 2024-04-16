//
//  ContentView.swift
//  heroAnimation
//
//  Created by Jennifer Luvindi on 16/04/24.
//

import SwiftUI



struct home : View {
    
    @State var data = [
        Card(id: 1,image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date : "11 April 2024 at 18.33", sigName: "SIG Badminton", expand: false),
        Card(id: 2,image: "basketballImage", activityName: "BASKETBALL SPAR DAY FUN", date : "20 April 2024 at 16.33", sigName: "SIG Basketball", expand: false),
        Card(id: 3,image: "swimmingImage", activityName: "SWIMMING TOGETHER DAY", date : "25 April 2024 at 10.33", sigName: "SIG Swimming", expand: false),
        Card(id: 4,image: "billiardImage", activityName: "BILLIARD FIGHT DAY", date : "18 April 2024 at 7.33", sigName: "SIG Billiard", expand: false),
        Card(id: 5,image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date : "11 April 2024 at 18.33", sigName: "SIG Badminton", expand: false)
    ]
    
    @State var hero = false
    @Binding var show : Bool
    @State var dataPass = Card(id: 0,image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date : "11 April 2024 at 18.33", sigName: "SIG Badminton", expand: false)
    var namespace: Namespace.ID
    
    var body: some View{
        VStack{
            if !show {
                VStack{
                    Text("My Events")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    //                        .padding()
                    ZStack {
                        Picker(selection: .constant(1), label: Text("Picker")) {
                            Text("Upcoming").tag(1)
                            Text("Registered").tag(2)
                        }
                        .tint(Color.orange)
                        .pickerStyle(.automatic)
                        .frame(maxWidth: .infinity, maxHeight: 36, alignment: .trailing)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        Text("Select Events")
                            .frame(maxWidth: .infinity, maxHeight: 36, alignment: .leading)
                            .padding(.leading)
                            .foregroundColor(.gray)
                        //                    .border(Color.blue)
                    }
                    .padding(.bottom)
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 165){
                            ForEach(1..<self.data.count){i in
                                
                                GeometryReader{g in
                                    
                                    ZStack {
                                        Image(self.data[i].image)
                                            .resizable()
                                            .scaledToFill()
                                        //                    .frame(width: 358, height: 151)
                                            .frame(maxWidth: .infinity, maxHeight: 150)
                                            .cornerRadius(10)
                                            .clipped()
                                            .overlay(
                                                ZStack {
                                                    Rectangle()
                                                        .fill(.linearGradient(Gradient(colors: [Color.black, Color.clear]),startPoint: .leading, endPoint: .trailing))
                                                        .opacity(0.6)
                                                        .cornerRadius(10)
                                                    Rectangle()
                                                        .fill(.linearGradient(Gradient(colors: [Color.orange, Color.clear]),startPoint: .bottom, endPoint: .center))
                                                        .opacity(0.3)
                                                        .cornerRadius(10)
                                                }
                                            )
                                            .blur(radius: 0.9)
                                            .matchedGeometryEffect(id: self.data[i].id, in: namespace)
                                        
                                        
                                        HStack {
                                            VStack{
                                                //                    Text(Date.now.formatted(date: .long, time: .shortened))
                                                Text(self.data[i].date)
                                                    .font(.callout)
                                                    .bold()
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .padding(.bottom, 2)
                                                //                                            .matchedGeometryEffect(id: "date", in: namespace)
                                                Text(self.data[i].activityName)
                                                    .font(.title2)
                                                    .bold()
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .padding(.bottom, 2)
                                                //                                            .matchedGeometryEffect(id: "activityName", in: namespace)
                                                HStack {
                                                    Image(systemName: "person.3.fill")
                                                    Text(self.data[i].sigName)
                                                        .font(.headline)
                                                }
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                //                                        .matchedGeometryEffect(id: "sigName", in: namespace)
                                            }
                                            .padding(.leading)
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    .onTapGesture {
                                        dataPass = Card(id: self.data[i].id,image: self.data[i].image, activityName: self.data[i].activityName, date : self.data[i].date, sigName: self.data[i].sigName, expand: self.data[i].expand)
                                        withAnimation(.spring(response: 0.2, dampingFraction: 1.0)){
                                            show.toggle()
                                        }
                                    }
                                    
                                }
                            }
                            
                            
                        }
                    }
                }
                .padding()
                .padding(.top, 60)
                .padding(.bottom, 70)
                
            }
            else {
                cardView(dataPass: $dataPass, hero: $hero, namespace: namespace)
                    .overlay{
                        VStack {
                            ZStack {
                                Image(systemName: "x.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .bold()
                                    .foregroundColor(.orange)
                                    .opacity(0.6)
                                    .padding(20)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.2, dampingFraction: 1.0)){
                                            show.toggle()
                                        }
                                    }
                                
                            }
                            .padding()
                            .offset(x: 165, y: -15)
                            Spacer()
                        }
                    }
            }
        }
        .ignoresSafeArea()
    }
    
}

struct cardView: View {
    
    @Binding var dataPass: Card
    @Binding var hero: Bool
    var namespace: Namespace.ID
    
    var body: some View {
        VStack {
            
            ZStack {
                Image(dataPass.image)
                    .resizable()
                    .scaledToFill()
                //                    .frame(width: 358, height: 151)
                    .frame(maxWidth: 403, maxHeight: 230)
                    .cornerRadius(10)
                    .clipped()
                    .overlay(
                        ZStack {
                            Rectangle()
                                .fill(.linearGradient(Gradient(colors: [Color.orange, Color.clear]),startPoint: .bottom, endPoint: .center))
                                .opacity(0.3)
                                .cornerRadius(10)
                            Rectangle()
                                .fill(.linearGradient(Gradient(colors: [Color.black, Color.clear]),startPoint: .bottom, endPoint: .center))
                                .cornerRadius(10)
                        }
                    )
                //                    .matchedGeometryEffect(id: "bg", in: namespace)
                    .matchedGeometryEffect(id: dataPass.id, in: namespace)
                
                
                
                VStack {
                    Spacer()
                    HStack {
                        VStack{
                            //                                                Text(Date.now.formatted(date: .long, time: .shortened))
                            Text(dataPass.date)
                                .font(.callout)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 2)
                            //                                .matchedGeometryEffect(id: "date", in: namespace)
                            Text(dataPass.activityName)
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 2)
                            //                                .matchedGeometryEffect(id: "activityName", in: namespace)
                            HStack {
                                Image(systemName: "person.3.fill")
                                Text(dataPass.sigName)
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            //                            .matchedGeometryEffect(id: "sigName", in: namespace)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        Spacer()
                    }
                    .padding(.bottom)
                    .padding(.leading,-2)
                }
                .frame(maxWidth: 403, maxHeight: 230)
                
                //                                .border(Color.red)
                
            }
            
            ZStack {
                Rectangle()
                    .fill(.thinMaterial)
                HStack {
                    VStack{
                        //                        Text("Location")
                        //                            .font(.subheadline)
                        //                            .padding(.bottom,2)
                        //                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("The Breeze")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .bold()
                        Text("Jl. Lorem Ipsum no. 12127937 Jakarta Tenggara")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    //                            .border(Color.red)
                    .padding()
                    Spacer()
                    
                    Image(systemName: "map.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .padding()
                        .foregroundColor(.orange)
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 100)
            //            .cornerRadius(10)
            .padding(.bottom)
            
            ScrollView{
                VStack (alignment: .leading){
                    HStack {
                        Text("Total Rent Amount")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text("Rp 115.000")
                    }
                    .padding(.bottom)
                    Text("Note:")
                        .bold()
                    Text("Total Rent Amount will be divided by the amount of members joined")
                        .padding(.bottom)
                    
                    Text("Description")
                        .bold()
                    Text("Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                        .padding(.bottom)
                    Text("Requirements:")
                        .bold()
                    Text("Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                    
                    
                    
                    
                }
                
            }
            .padding(.horizontal)
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(Color.black)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 360, height: 50)
                    .cornerRadius(15)
                    .overlay{
                        Text("Register")
                            .font(.title)
                            .bold()
                    }
                    .padding(.bottom, 90)
            }
            .frame(maxWidth: .infinity, maxHeight: 165)
            //                        .padding(.bottom, 80)
            
        }
        .ignoresSafeArea()
    }
    
}

struct Card : Identifiable {
    var id: Int
    var image : String
    var activityName : String
    var date : String
    var sigName : String
    var expand: Bool
}



#Preview {
    ContentView()
}
