# Welcome to our StockUP App prototype

Ever forgotten what’s in your fridge? Or bought a food item only to realise it’s already in your fridge and now end up having too much? Most suggestions we get for this problem would be to buy less or remember to check the expiry date of food items frequently. But with the busy lives we all have, it is inevitable that some things just slip the mind.

So why not let a mobile app handle such mundane things for you and remind you what is about to expire? Better yet, keep track of your food wastage statistics using the same app and increase awareness of your eating habits as well!

## Aim

We hope to make grocery planning and keeping track of food at home easier through a mobile app that allows users to easily add, track and plan their food consumption patterns to reduce food wastage.

## User Stories

>*"I used to find it inconvenient to remember when food items I buy would **expire**. I always end up buying something and never getting the chance to even take a bite of it because the product expired. I want some way to keep track of when items I buy expire so I can plan my eating habits so I don’t cause **food wastage**."*

>*"I found it **difficult to collate** a list of items to buy from the rest of the household members whenever I go grocery shopping. I don’t like going back to the shop just to buy one item I missed."*

>*"I want to know how fast food runs out at home so I can **better plan when to buy food** so I don’t run out of food at home."*

>*"It would be **convenient to get recommendations** on what to add to my grocery list based on what I usually like and buy."*

# Features and Timeline

The **mobile application** built using Flutter provides 
* Scan items using camera: computer vision to read expiry date
* Barcode scanner to scan product and check with our database
  * If the item is not in our database, we can check google, find the top result and confirm with the user
  * If the item is not found online, user can add the item directly, and we will (try) to add it to our database
* Calendar view of when items expire
* Graphs on amount of expired food (food expired before user swipe consumed): so the app can make it easier to track how much food is wasted because the food got expired and what the trend is like in the recent month.
* Collaborate with others to make a shopping list, with smart prediction on items to add based on previously bought items
* Reminder when expiry dates are close

## Possible expansion:
Collaborate with local grocery outlets such as fairprice etc and even online grocery outlets to share e-receipt directly with the app
 
## Features to be completed by the mid of June:
 
* Mobile Application
Barcode scanner to scan product and return correct item with expiry date. Obtain training and testing data for expiry date recognition, training model

* Database 
Use web scrapers to collate and store the nutrition info on grocery items seen in Fairprice, Giant and Sheng Siong in Singapore

## Features to be completed by the mid of July:
 
* Data Visualisation features
  * Graphs on food item consumption
  * Calendar view of when items expire and reminder when expiry dates are close and 

* Mobile application
  * Scan items using camera and use computer vision to read the expiry date 
  * Integrate components for better app experience
          
* Collaborate with others to make a shopping list, with smart prediction using machine learning based on previously bought items

# Tech Stack
1. Flutter
2. Tensorflow
3. Python
4. OpenCV
5. Firebase
6. Beautiful Soup

# Our Qualifications

1. CCA where we use computer vision to detect and recognize moving robots from other teams in realtime and put a bounding box around them
* Image processing using openCV
* Object detection models
* Object tracking
* Training models using pre-trained models and custom datasets

2. Libraries we’ve worked with before:
* Tensorflow
* Matplotlib, Seaborn
* openCV
* NumPy, pandas

3. Languages we’ve worked on before: 
* Python
* Java
* Javascript, HTML, CSS
* C/C++
* Now some dart for Flutter

4. Hackathons we’ve participated:
* iNTUition v7.0 (2021)
  * Built an internal database through scraping of tables and make a simple search engine to match user inputs and a simple histogram to visualize search frequencies. 
  * Built a web extension that allows users to control video playback on youtube using simple gestures like pinch scrolling, pinch to pause and play
* NUS Data Science Competition 2020
  * Recognize handwriting and count valid acumen (chips) from images. Classical and deep learning methods allowed.
* AWS Build On, Singapore 2020 (Semi-finalist)
  * Built a prototype of a mobile app that gamifies exercise in a similar manner to how pokemon go works. Teams can meetup and participate in walkathons to find virtual treasure scattered across various locations in Singapore. Easily track fitness goals, compete with friends and claim rewards through government incentives like the HPB National Steps Challenge

# Though we aren't too familiar with the rest, we love to learn and build something awesome!

## Thanks for reading all the way to the end. Feel free to contact us at our telegram ids or emails. Looking forward to hearing from you soon!