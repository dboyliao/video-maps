youtubeVideos = [
  {_id:"OCQU6M4pPiw", title:"五分鐘學會「如何使用Rstudio建立R套件」"},
  {_id:"xt1_oXJtB3M", title:"Play Data with Orange"},
  {_id:"hIdvjh-O69w", title:"MLDM Monday 20140901"},
  {_id:"vteHJEJuNcQ", title:"Machine Learning: Theory, Implmentation and Practice"},
  {_id:"CLq8MlK3oo0", title:"運用貝氏網路於手機 APP 分析"},
  {_id:"A1IIcZW5UrI", title:"五分鐘建立R的命令列應用程式"},
  {_id:"9K3B3OYMtjY", title:"Visualization in Python (part I)"},
  {_id:"escsixrqG6M", title:"[COSCUP 2013] Orange 套件使用與外掛開發"},
  
]

if Videos.find().count() == 0
	for doc in youtubeVideos
		Videos.insert doc

community = [
  {name: "Taiwan R User Group/MLDM Monday",
  meetupURL: "http://www.meetup.com/Taiwan-R/",
  imgURL: "http://photos3.meetupstatic.com/photos/event/5/4/0/8/600_260721512.jpeg",
  description: "R 是目前最紅的 Open Source 統計語言，而且，不只是對於傳統的統計檢定來說，或是，對於新世代的 Machine Learning 和 Data Mining 的許多技術而言，R 都有很完整的套件支援。因此，可以很快速的在R上面運用各種 Machine Learning 的技術來分析資料。"},
  {name: "Taipei.py - Taipei Python User Group",
  meetupURL: "http://www.meetup.com/Taipei-py/",
  imgURL: "http://photos2.meetupstatic.com/photos/event/6/8/8/highres_213361672.jpeg",
  description: "Taipei.py 又稱台北 Python 使用者群組，每個月會舉辦 Seminar（討論會）讓大台北的 Python 愛好者或對 Python 有興趣的人，能藉由難得的機會一起分享、研究、把玩、認識它五花八門的應用與技術，以及 Python 之美。"},
  {name: "Meteor Taipei",
  meetupURL: "http://www.meetup.com/Meteor-Taipei/",
  imgURL: "http://photos1.meetupstatic.com/photos/event/1/e/f/c/highres_392587932.jpeg",
  description: "Meet other developers using Meteor. Share your knowledge, apps, and get feedback from others. Meteor is an open-source platform for building top-quality web apps in a fraction of the time, whether you're an expert developer or just getting started."}
]

if Community.find().count() == 0
  for doc in community
    Community.insert doc