# counter_7

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