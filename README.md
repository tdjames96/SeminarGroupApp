# SeminarGroupApp 

Original App Design Project - README Template
===

# Scholarly Savings

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Student experiences vary from person to person, but one thing most students struggle with are finances.  Once students graduate, they’re met with more financial struggles like paying off their loans and debts. The average student borrower will spend up to 20 years to pay their debt. This can be a headache after transitioning out of college into the real-world. This application will help students, especially graduating students, budget their money during and after school. Our application will give students a visual representation in a graph of their income vs spending, give them options to manages expenses, and manage debt. Students will be given a questionarre asking about expenses and will have a profile to enter phone number, email, expenses, and income.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:Finance 
- **Mobile: IOS**
- **Story:N/A
- **Market: College Students**
- **Habit:**
- **Scope: Help college students keep track and budget money**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

*Shows user finance and budgeting plan


### 2. Screen Archetypes

* [Login page]
   * [user can login to account or create an account ]
* [Create account page]
   * [user can create account by putting in his email and selecting a password]
   [Questinnare  page]
   * [user input their data ]
 * [Home Page]
   * [Dispalys user info and budgeting tips]
   [Settings Page]
   * [user can change data if needed]

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [Home Page]
* [Settings Page]


**Flow Navigation** (Screen to Screen)

* [Login Page ]
   * [Show Detail(Home Page)]
   * [Show Detail(Create Account Page)]
   * [Show Detail(Forgot Password Page)]
* [Create Account Page]
   * [Show Detail(Questionnare Page)]
   * ...

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
Property                   Type              Description
Create_Account            Button            User can create account
Log_in                    Button            User can log in to account after entering info
logo                      Image             Logo of the app
forgot_password           Button            User can find their pasword if forgotten
email                     TextBox           User enters email address in textbox
password                  TextBox           User enters passowrd in textbox
login_button              Button            Button for user to log in
user_profilePicture       Image             Usr profile picture image


### Networking
- login Screen
  - Snippet of home screen code
  @IBAction func onSign(_ sender: Any) {
        let user = PFUser()
        
        user.email = emailField.text
        user.password = passwirdfield.text
         
        let password = passwirdfield.text!
        let email = emailField.text!
        
        PFUser.logInWithUsername(inBackground: email, password: password) { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue" , sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
                
                
            }

    - Allows User to log in but sends error if logni information is not valid
    
    
-  Create Button
  - Snippet of create account button code
  
  @IBAction func createButton(_ sender: Any) {
        
        let user = PFUser()
        
        user.email = emailText.text
        user.password = passwordField.text
        
         
        let password = passwordField.text!
        let email = emailText.text!
        let cPassword = cPasswordField.text
        
        user.signUpInBackground{ success, error in
            if password == cPassword{
                self.performSegue(withIdentifier: "loginSegue" , sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
                
                
            }
            
  - Allows user to sign up for an account. If the password is good it will allow user to log in to app. if not, error will be given.
