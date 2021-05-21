# Blood Bank Management Website

 - All the pages of Asp.net => BloodBankManagement3Tier/BloodBankManagement3Tier/themes/sulfer-premium
 
  * Motive to develop this website for handle the Management of Blood Bank.

->  This website is developed by using HTML, CSS, Javascript, Bootstrape3 for the Frontend. The technology is used behind this website is Asp.net and for the Database Management I     used Microsoft SQL Server.

->  This website is Divided into the two part : Admin Panel & User Panel.
    - Admin can access the both Panel : Admin & User.
    - Users(Either Blood Donors or Blood Accepters) can access only one Panel : User Panel.

# Admin Panel
->  When admin is logining, only at that time the Admin Panel has been seen by the Admin. 

     - Email => admin@gmail.com
     - Password => 11111111

->  In the Admin Panel,below things are available:

      - SEE DONATION REQUEST :- In this Page, Admin can see the Blood Donation Requests which are apply by the Blood Donors. In which Admin also see the Name of the Blood Donor,Email Address, Mobile No, Blood Group, Address. And he has the right to delete the Blood Donation request if any issues will be create. Admin also Search the Blood Donors by the Blood Group whose are available in the Blood Donation request.
       
     -  UPDATE BLOOD BANK STOCK :- In this Page, Admin can see the Blood Bank stock according the Blood Group. Not only see, but he also has the right to update the Blood Stock according to Blood Group. First select the Blood Group from the drop down menu which want to update, and then update by add the new stock and click on the update button. and after that the blood bank stock is updated the admin also see the result of this process in the Blood bank stock table. Only Admin has right to update the blood bank stock. Other users are just see the stock or able to do any changes in the blood bank stock. Because Users can't able to see the Admin Panel. 
     
     - SEE BLOOD REQUEST :- In this Page, Admin can see the Blood requirement Requests which are apply by the Blood accepters. In which Admin also see the Name of the Blood accepters,Email Address, Mobile No, Blood Group, Address. And he is the right to delete the Blood requirement request if any issues will be create. Admin also Search the Blood Donors by the Blood Group whose are available in the Blood required request.
     
 #  User(Either Blood Donor or Blood Accepter) Panel
 -> Admin and Users both can login. Both have right to see this Panel. But if new User want to see this Panel, he/she need to do first register or Sign up. Then after through the login they can access this Panel. 
 ->  In this Panel, Below things are available:
 
     -  Home Page     :- In which all the details or goal of the Blood Bank Management and all the basics deatils are available which are important to read for users.
     
     -  About Us      :- In which all the deatils, how Blood Bank is working and connected with the hospitals and other health centers. Donation Ratio, Acceptance ratio and blood bank bootcamp, why we choose us?,what is our goal? these all questions answer are available within this page and also the team members information are available in this Page.
     
     -  Our Services  :- In which again four different parts are availables, Which are as per the below:
                       - SEARCH BLOOD DONOR :- User can able to search the Blood Donor. First select the Blood Group from the dropdown menu according to Blood Group.
                       - REQUEST FOR BLOOD DONATION :- User want to donate the Blood, then they need to just click this icon. After that all the information of the user from their registration form automatically inserted from the Data base of Registration table using the SelectByPrimaryKey Query fire. Then after user need only click on submit button. So, the blood donation request is successfully added in the Doation database.
                       - BLOOD BANK STOCK :- All Users can able to see the available Blood Bank Stock(in ml) according to each Blood Group.
                       - REQUEST FOR BLOOD :- User need the Blood, then they need to just click this icon. After that all the information of the user from their registration form automatically inserted from the Data base of Registration table using the SelectByPrimaryKey Query fire which is written in the Stored Procedure. Then after user need only click on submit button. So, the blood requirement request is successfully added in the Accpeter database.
      - Contact       :- In which the address of head office and other braches of Blood Banks are avaliable. Also provide the Google map as well.
 
   
 
