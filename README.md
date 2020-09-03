# qa-relayr-test
Test tasks for QA Engineer at Relayr

## Task 1 details
Task 1 answers are maintained in "TestTasksforQAEngineeratRelayr.pdf"

## Task 2 details
### Test case document format
1. The test cases are written in BDD format (Given, When, Then)
2. File is saved with .feature extension "publicapis.feature"

### Automation
1. The test actions are maintained in "publicapis.py" with fixture and parameterization
2. The response body validation is done by maintaining it in different .json files as the responses were huge(It could be handled with different logic implementation)
3. There is constant file to maintain static values instead of directly passing it in the test action files

### Test Reports
1. Executed with pytest publicapis.py -v --junitxml="testresults.xml"
2. The file generated is "testresults.xml" after the execution
3. More modification and parameterization could have been done
