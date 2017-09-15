
# Language: English

Feature: Create new Lead Segmentation 
In order to organize Leads
As an app user 
I want to create different segmentation based on Leads profiles

 Background:
 Given the user is authenticated in the website
 And access the "Relacionar" menu
 And access "Segmentação de Leads" on the dropdown

 Scenario: Creating new Segmentation  
 When the user click "Criar Segmentação" button
 And add a Segmentation name
 And click "Criar Segmentação"
 And add a condition
 Then a new name is added to segmentation list

 Scenario: Canceling new Segmentation creation
 When the user click "Criar Segmentação" button
 And add a Segmentation name
 And cancel the creation
 Then no new name is added to the segmentation list

 Scenario: Closing New Segmentation window with no input name
 When the user click "Criar Segmentação" button
 And close the pop up window without adding a name to it
 Then no new name is added to the segmentation list

 Scenario: Closing New Segmentation window with input name
 When the user click "Criar Segmentação" button
 And close the pop up window after adding a name to it
 Then no new name is added to the segmentation list



