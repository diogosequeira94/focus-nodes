# flutter_focus_nodes

Flutter Sample App showing how to interact with Focus Nodes.

## What is the use of FocusNode?

As we all know that there are many input type TextFormField in our form filling process, we have to input many details in different text area according to its requirement.
When our application has many TextFormFieldand the one which is selected and accepting an input from the user is said to have in a “focus” state. After providing an input to a focused TextFormField our focus now moves to another or says to the next TextFormField area. Here to implement such processes on focusing our selected TextFormField we use FocusNode.

## How to focus on a TextFormField when a button is tapped?

Following steps to be performed to focus on a TextFormField:
1. Create a FocusNode.
2. Pass the FocusNode .
3. Give focus to the next TextFormFieldwhen the button is tapped.
