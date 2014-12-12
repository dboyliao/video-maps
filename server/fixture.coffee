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