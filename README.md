# README

Here you can see the procedure to set up the web app locally

## Tools

* Ruby version 2.0.7
* Rails version 5.2.2
* Database used => SQLite3

---

### delete database

* **rails db:drop**

### create database

* **rails db:create**

### migrate database

* **rails db:migrate**

---

## Local deployment instructions

* get in the project folder => **cd mtpb/**
* launch the dev server => **rails server**
* go to => **localhost:3000**

---

## Running the app

### Pages ans routes => **rake routes**

* homepage => **/**
* show all trip plans => **/trip-plans**
* show a trip plan => **/trip-plans/:id**
* edit a trip plan => **/trip-plans/:id/edit**
* create a trip plan => **/trip-plans/new**
* delete a trip plan => **/trip-plans/:id**
* show all days => **/trip-plans**

* show a day => **/days/:id**
* edit a day => **/days/:id/edit**
* create a day => **/days/new**
* delete a day => **/days/:id**

### Using the app

* Click on "All trip plans" or "All days" in the menu to access the page
* On the page you can click on "New Trip Plan" or "New Days" to add some data
* After filling the form and clicking on submit you will be redirected on the main page "All trip plans" or "All days"
* You can finally Show, Edit or Delete each Plan or Day as you wish
* You can also click on the first tab (Index) in the Days table to sort by index.