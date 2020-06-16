$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/context.feature");
formatter.feature({
  "name": "Validating Context Selection feature with different users",
  "description": "",
  "keyword": "Feature"
});
formatter.scenarioOutline({
  "name": "20 Context selection health bill  by Head Office user",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@hold"
    }
  ]
});
formatter.step({
  "name": "Head Office users with 1 address multiple role multiple referrals  will be able to access Context selection page in Health Bill Submission in Provider portal",
  "keyword": "Given "
});
formatter.step({
  "name": "Login with \u003cUsername\u003e or \u003cPassword\u003e user in provider portal",
  "keyword": "When "
});
formatter.step({
  "name": "In Home page Click on WSIB Link",
  "keyword": "And "
});
formatter.step({
  "name": "In WSIB Home page Click on Health Bill Submission application",
  "keyword": "And "
});
formatter.step({
  "name": "Should be able to access Health Bill Submission in WSIB in provider portal",
  "keyword": "Then "
});
formatter.step({
  "name": "Should be able to access Health Bill Submission and see location \u003cworklocation\u003e role \u003crole\u003e serviceProvider \u003cserviceProvider\u003e Independent Role \u003cIndependent Role\u003e and Independent Referral \u003cIndependent Referral\u003e",
  "keyword": "And "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "Username",
        "Password",
        "worklocation",
        "role",
        "serviceProvider",
        "Independent Role",
        "Independent Referral"
      ]
    },
    {
      "cells": [
        "DM200062532",
        "Welcome2",
        "61 PEARLDALE AVE NORTH YORK ON L6W 3G6 CANADA",
        "Facility - Rehabilitation",
        "iowon manas",
        "Chiropractor",
        "No Program"
      ]
    }
  ]
});
formatter.background({
  "name": "",
  "description": "",
  "keyword": "Background"
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "Open browser",
  "keyword": "Given "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.openBroswer()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "20 Context selection health bill  by Head Office user",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@hold"
    }
  ]
});
formatter.step({
  "name": "Head Office users with 1 address multiple role multiple referrals  will be able to access Context selection page in Health Bill Submission in Provider portal",
  "keyword": "Given "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.userPortal(java.lang.String,java.lang.String,java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "Login with DM200062532 or Welcome2 user in provider portal",
  "keyword": "When "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.login(java.lang.String,java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "In Home page Click on WSIB Link",
  "keyword": "And "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.clickWsibLink()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "In WSIB Home page Click on Health Bill Submission application",
  "keyword": "And "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.clickOnApplication(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "Should be able to access Health Bill Submission in WSIB in provider portal",
  "keyword": "Then "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.verfiyWsibPortal(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "Should be able to access Health Bill Submission and see location 61 PEARLDALE AVE NORTH YORK ON L6W 3G6 CANADA role Facility - Rehabilitation serviceProvider iowon manas Independent Role Chiropractor and Independent Referral No Program",
  "keyword": "And "
});
formatter.match({
  "location": "stepDefinitions.StepDefinition.verifyLocationRoleServiceProviderRoleProgramReferralProgram(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});