---
title       : D3 . JS tutorial (Basic)
subtitle    : from d3.js's document
author      : Bigmoumou
job         : NTU Econ
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Syllabus :
<img height='450' src='.\img\d3_0_1.png' />

---

## Let's start our learning now `\(^ ^)/`:
<img height='450' src='.\img\d3_0_2.png' />

---

## Hello World to D3.js :
<img height='450' src='.\img\d3_1_1.png' />

---

## Hello World to D3.js :
<img height='450' src='.\img\d3_1_2.png' />

---

## Hello World to D3.js :

<img height='450' src='.\img\d3_1_3.png' />

---

## Hello World to D3.js :

<img height='450' src='.\img\d3_1_4.png' />

---

## Two Basic method : select & append ( + text )

  - select ( ) : 選擇 html 標籤位置。ex. body    
    
  - append ( ) : 加入特定項目的方法。ex. 加入 p (段落), 加入 svg (圖形)    
        
  - text ( ) : 輸入文字。   

---

## D3 物件導向小介紹 :

<img height='450' src='.\img\d3_1_5.png' />

---

## D3 Hello World 流程說明 :

<img height='450' src='.\img\d3_1_6.png' />

---

##  
<div style='text-align: left;'>
<img height='450' src='.\img\d3_0_3.png' />
</div>

---

## Essential graph skill : Basic SVG graph
<img height='450' src='.\img\d3_2_1.png' />

---

## Essential graph skill : Basic SVG graph
<img height='450' src='.\img\d3_2_2.png' />

---

## Essential graph skill : Basic SVG graph
<img height='450' src='.\img\d3_2_3.png' />

---

## Essential graph skill : Basic SVG graph
<img height='450' src='.\img\d3_2_4.png' />

---

## Essential graph skill : Basic SVG graph
<img height='450' src='.\img\d3_2_5.png' />

---

## The graph will look like ~
<img height='450' src='.\img\d3_2_6.png' />

---

## Now , try to draw a graph like this :
<img height='450' src='.\img\d3_2_7.png' />

---

## Now , try to draw a graph like this :
<img height='450' src='.\img\d3_2_8.png' />

---

## D3.js 坐標軸提醒 :
<img height='450' src='.\img\d3_2_8_1.png' />

---

## The answer is :
<div style='text-align: center;'>
<img height='450' src='.\img\d3_2_9.png' />
</div>

---

## 補充 : 畫直線(單條)
```{}
	<script>
		var canvas = d3.select("body")
						.append("svg")
						.attr("width", 500)
						.attr("height", 500);
		var line = canvas.append("line")
						.attr("x1", 0)
						.attr("y1", 100)
						.attr("x2", 400)
						.attr("y2", 400)
						.attr("stroke", "green")
						.attr("stroke-width", 5)
	</script>
```

---

## 補充 : 畫直線(單條)
<img height='450' src='.\img\d3_2_10.png' />

---

<div style='text-align: center;'>
<img height='450' src='.\img\d3_3_1.png' />
</div>

---

## Bar chart ~!
```{}
	<script>
		var dataArray = [20, 40, 50];

		var canvas = d3.select("body")
						.append("svg")
						.attr("width", 500)
						.attr("height", 500);


		var bars = canvas.selectAll("rect")
					.data(dataArray)
					.enter()
						.append("rect")
						.attr("width", function(d){return d*10;})
						.attr("height", 50);
	</script>
```

---

## Bar chart ~!
<img height='520' src='.\img\d3_3_2.png' />

---

## Bar chart ~!
<img height='520' src='.\img\d3_3_3.png' />

---

## Bar chart ~!
<img height='520' src='.\img\d3_3_4.png' />

---

## D3 中 Function 的使用 ;
<img height='520' src='.\img\d3_3_5.png' />

---

## D3 中 Function 的使用 ;
<img height='520' src='.\img\d3_3_6.png' /> 

---

## D3 中 Function 的使用 ;
<img height='520' src='.\img\d3_3_7.png' /> 

---

## D3 中 Function 的使用 ;
<img height='520' src='.\img\d3_3_8.png' /> 

---

## 我們希望產生的效果如下 :
<img height='520' src='.\img\d3_3_9.png' />

---

## 我們希望產生的效果如下 :
<img height='520' src='.\img\d3_3_10.png' />

---

## 但實際結果是否不如預期 ?
<img height='520' src='.\img\d3_3_11.png' />

---

## 其實還少了一條 code :
<div style='text-align: center;'>
<img  src='.\img\d3_3_12.png' />
</div>

---

## Y 軸設定方式 :
<img height='520' src='.\img\d3_3_13.png' />

---

## Function 參數 i 介紹 :
<img height='520' src='.\img\d3_3_14.png' />

---

## Function 參數 i 介紹 :
<img height='520' src='.\img\d3_3_15.png' />

---

## Function 參數 i 的使用 :
<div style='text-align: center;'>
<img  src='.\img\d3_3_16.png' />
</div >

---

## 圖片解說 :
<img  src='.\img\d3_3_10.png' />

---

## 圖片解說 :
<img  src='.\img\d3_3_17.png' />

---

## 觀念總結 :

1. 在繪製 d3.js 的圖形之前，要先創建一個畫布 canvas 變數，這楊才有辦法繼續在上面做圖。

2. 熟悉 function 參數 d 的使用，這樣才能夠將要輸入的資料一個一個對應到要畫的東西上面。

3. function 的 i 參數的使用也很重要，其功能很適合用在另外一個軸的距離設定上。

 
   











