# Assignment 8

Halomoan Geraldo - 21067208865

## Explain the difference between Navigator.push and Navigator.pushReplacement.
The Navigator.push will push a new page to the navigator stack without popping anything from the stack. On the other hand, the Navigator.pushReplacement will replace the top of the stack in the navigator stack by first popping, the stack and pushing the new page.

## List all the widgets you used in this project and explain their functions.
- Stateless widget : Used for the root of the application.
- Stateful widget : Used to make widgets with changing states.
- Scaffold : Used to contain other widgets.
- Container : Also used to contain other widgets
- Drawer : Widget used to contain ListTiles when clicked.
- ListTile : The widget used as buttons to redirect between pages of the app.
- Form : Used to retrieve the inputted data from the user.
- Navigator : Used to navigate between pages of the application.
- TextFormField :  A field that retrieves the text inputted by the user.

## Name the types of events that exist in Flutter (example: onPressed).
- onPressed : When a widget that can be clicked on is clicked, triggers an event.
- onTap : Similar to onPressed, but usually for a widget that are usually not clickable.
- onChanged : Triggers an event when the content of the widget is changed. Usually used for text fields and other similar widgets.
- onSaved : Triggers an event when a widget is saved.

## Explain how the Navigator works in "switching" pages of a Flutter application.
The Navigator in Flutter uses a stack to switch between pages of the application. The top of the stack will be the current page that will be shown to the user. We can use functions such as Navigator.push and Navigator.pushReplacement to push routes to the page to change between pages. If the pop function is called, the next top of the stack route will then be shown to the user.

## Explain how you implemented the checking list above.
First, I created a new form.dart file and created the input fields so that the user can input data. Then, I made the budgetmodel.dart file to make the BudgetModel class which contains Strings that will be shown later. After this, I made the budgetshow.dart file to show the BudgetModels that the user inputted in a container and using the ListView class to list each BudgetModel from the user. Finally, I added the drawer to each of the file except the model file and added the routes to each of the file to make the drawer functional. For the routing between pages, I used the Navigator.pushReplacement so that the top of the stack will just be replaced by the new route. 


# counter_7 (Assignment 7)

Halomoan Geraldo - 2106720885

## Explain what is meant by stateless widget and stateful widget and explain the difference between them.
A stateless widget is a widget that will never change its appearance and we are not able to change the state of these widgets during a runtime of the app.Two examples of this widget would be the Icon and Text. A stateful widget is the opposite of a stateless widgets, they are widgets that can be changed and therefore are dynamic as its state can be changed many times during a runtime of the app. To be more specific, these widgets will usually change its appearance when there are actions from the user or when the widget accepts data. Two of a Stateful widget is the Form and the Radio Button.

## Mention what widgets you use in this project and explain their functions.
Row to act as a container for the other widgets.
FloatingActionButton for buttons to increment and decrement the counter value

## What is the function of setState()? Explain what variables can be affected by the function.
The setState() function is a function to change the state of something. From our previous definition of widgets, we know that the widgets that has a mutable state are the Stateful widgets therefore only these Stateful Widgets can be affected by the setState function.

## Explain the difference between const and final.
Const is a variable declarator that can be changed while final declares a constant that cannot be changed.

## Explain how you implement the checklist above.
First, I added a new function to decrement the value of the counter. Then I added a new button and made it so when that button is clicked, the decrement function is called. After that, I changed the text on the title of th application and also added an if statement to check whether the value of the counter is even or odd. For the position of the button, I used the row class and used it as a container for the two buttons while also adding paddings so that they are in the correct position.