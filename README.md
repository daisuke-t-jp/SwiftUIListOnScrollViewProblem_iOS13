# SwiftUIListOnScrollViewProblem_iOS13

<img src="https://raw.githubusercontent.com/daisuke-t-jp/SwiftUIListOnScrollViewProblem_iOS13/master/demo.gif" width=300>

SwiftUI problem sample in iOS 13.

The `List`'s item remains selected on `ScrollView`.


## NG

```swift
 var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    List {
                        NavigationLink(destination: DetailView()) {
                            Text("1")
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("2")
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("3")
                        }
                        
                    }.frame(height: 300)
                }
            }
            .navigationBarHidden(false)
        }
    }
```



## OK

```swift
 var body: some View {
        NavigationView() {
            //ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    List {
                        NavigationLink(destination: DetailView()) {
                            Text("1")
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("2")
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("3")
                        }
                        
                    }.frame(height: 300)
                }
            //}
            .navigationBarHidden(false)
        }
    }
```
