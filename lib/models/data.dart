import 'models.dart';

class Data {
  List<Information> educations = [
    Information(
        startTime: "2019 -",
        endTime: "",
        title: "Lappeenranta University of Technology, Masters of Engineering",
        text:
            "In the fall of 2019 I started my masters degree in Software Engineering."),
    Information(
        startTime: "2015 -",
        endTime: "2019",
        title:
            "Savonia University of Applied Sciences, Bachelor of Engineering",
        text:
            "In Savonia I studied information and communication technology for four and a half years. I learned the basics of programming and information technology. In the end of my studies I went abroad to Germany for four months."),
    Information(
        startTime: "2010 -",
        endTime: "2013",
        title: "Heinolan Lukio",
        text:
            "I went to college in Heinola Lukio, the town I was born in. From college I got many lifelong friends and learned many usefull skills."),
  ];
  List<Information> work = [
    Information(
        startTime: "5/2019 -",
        endTime: "8/2019",
        title: "Suonentieto Oy, Full Stack Developer",
        text:
            "At Suonentieto I developed web applications with React and Laravel."),
    Information(
        startTime: "9/2018 -",
        endTime: "2/2019",
        title: "AVL Regensburg, Mobile Developer",
        text:
            "I got the chance to go work abroad into Germany. At AVL my job was to develope mobile software with Googles Flutter framework."),
    Information(
        startTime: "2014 -",
        endTime: "2018",
        title: "Tuusplan Oy, trainee",
        text:
            "During my studies I worked as a trainee at Tuusplan Oy. My work was QT development with C++ and C. I also learned the basics of automation."),
    Information(
        startTime: "2010 -",
        endTime: "2013",
        title: "Heinolan Kipinä",
        text:
            "I worked as a helper in a machine rental shop in Heinola. I worked at Kipinä for three summers while in High School. The work was very much hands on and it taught me how to use my hands."),
  ];

  List<Information> projects = [
    Information(
        startTime: "2019",
        endTime: "",
        title: "Flutter web install guide",
        text:
            "I made guide on how to install Flutter web on Windows. \n\nLink: https://www.youtube.com/watch?v=dvCE7eSgF6A",
        imageUrl: "flutterwebinstall.PNG"),
    Information(
        startTime: "2019",
        endTime: "",
        title: "Flutter install guide",
        text:
            "I made guide to show how to install Flutter on Windows. \n\nLink: https://www.youtube.com/watch?v=TDBlhWcFEHw",
        imageUrl: "flutterinstall.PNG"),
    Information(
        startTime: "2019",
        endTime: "",
        title: "Speed reader application with Flutter",
        text:
            "I made video series on how to create simple speed reading application with Flutter framework. With Flutter it is easy to make applications for Android and iOS. \n\nLink: https://www.youtube.com/watch?v=eW1PDfVFUQk",
        imageUrl: "speedreader.PNG"),
    Information(
        startTime: "2018",
        endTime: "",
        title: "Helsinki Events API Android app",
        text:
            "I made application that shows Helsinki API events. User can search for events depending on date and place. \n\nLink: https://www.youtube.com/watch?v=lzT9cCsjT8o",
        imageUrl: "helsinkievent.PNG"),
    Information(
        startTime: "2017",
        endTime: "",
        title: "Storage management",
        text:
            "I made a storage management system with javascipt and php. User could add products and see their stocks. \n\nLink: https://www.youtube.com/watch?v=vqtrKHJL7F4",
        imageUrl: "productmanagement.PNG"),
    Information(
        startTime: "2017",
        endTime: "",
        title: "Game Jam 2017, Microwave",
        text:
            "I developed Microwave game in Game Jam 2017 with my friend. The idea is to collect food to extend the time in upper right corner. The game also features our selfmade soundtrack. Made with Unity. \n\nLink: https://www.youtube.com/watch?v=o8VeRzeK1Y0",
        imageUrl: "microwave.PNG"),
    Information(
        startTime: "2016",
        endTime: "",
        title: "Tough Guy Duck",
        text:
            "This platform game I made as a school project with my friends. It has all the basic features of platformer game. Made with Unity. \n\nLink: https://www.youtube.com/watch?v=l0TT27O4tUs",
        imageUrl: "tough.PNG"),
  ];
  List<Information> contacts = [
    Information(
        startTime: "",
        endTime: "",
        title: "Contact Information",
        text:
            "Kristian Tuusjärvi\n\n+358 40 526 4140\n\nkristian.tuusjarvi@gmail.com"),
  ];
}
