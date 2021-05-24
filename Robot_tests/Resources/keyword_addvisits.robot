*** Settings ***
*** Keywords ***

Given User on the Infotiv PetClinic page
     Wait until Page Contains          Welcome to Petclinic

When User select the Owners with All
     click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a/span
     Mouse Down                        xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a/span
     click element                     xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a/span
     Page should contain               Owners
     Wait until Page Contains          Owners
     click element                     xpath://html/body/app-root/app-owner-list/div/div/div/table/tbody/tr[5]/td[1]/a
     page should contain               Pets and Visits
     #click button                      xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[3]

And Click on Addnew and User enters valid Dates and Description
     page should contain                Owner Information
     Click button                        xpath://html/body/app-root/app-owner-detail/div/div/table[2]/tr/app-pet-list/table/tr/td[1]/dl/button[3]
     page should contain                 New Visit
     input text                          xpath://html/body/app-root/app-visit-add/div/div/form/div[1]/div[1]/div/input    2021/04/08
     input text                          xpath://html/body/app-root/app-visit-add/div/div/form/div[1]/div[2]/div/input    I need to visit
     click button                        xpath://html/body/app-root/app-visit-add/div/div/form/div[2]/div/button[2]
Then System shows the added visits
     Wait until Page Contains            Pets and Visits
     page should contain                 Pets and Visits

And Click on Delete button for visits
     Wait Until Page Contains            I need to visit
     click Element                       xpath=(//button[@class="btn btn-default"])[8]

Then System should deleted visits
     Wait until Page Contains            Owner Information

#End Web Test
 #  Close All Browsers




