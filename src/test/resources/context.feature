Feature: Validating Context Selection feature with different users

  Background: 
    Given Open browser

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @4Regression
  Scenario Outline: 1 01_Users able to access Context selection screen in SC referral application
    Given Clinic or individual users simple will be able to access Context selection page in Specialty Clinic Referral application in Provider portal
    And Login with <Username> or <Password> user in provider portal
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on Specialty Clinic Referral application
    Then Should be able to access Specialty Clinic Referral in WSIB in provider portal
    And Should be able to access Specialty Clinic Referral and see location <worklocation> and role <role>

    Examples: 
      | Username      | Password | worklocation                             | role         |
      | BEKA200062016 | Welcome2 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Chiropractor |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Regression
  Scenario Outline: 2 02_Users able to access Context selection screen in Physician referral application
    Given Clinic or individual users  will be able to access Context selection page in Physician referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Physician Referral application
    Then Should be able to access Physician Referral in WSIB in provider portal
    And Should be able to access Physician Referral and see location <worklocation> and role <role>

    Examples: 
      | Username      | Password | worklocation                                | role         |
      | GITA200060651 | Welcome1 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA    | Chiropractor |
      | HP200056608   | Welcome2 | 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA | Chiropodist  |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @TRegression
  Scenario Outline: 3 03_Context selection SC referral with 1 address 1 role mutiple referrals for Clinic user
    Given Clinic users with 1 address 1 role mutiple referrals will be able to access Context selection page in  Specialty Clinic Referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Specialty Clinic Referral application
    Then Should be able to access Specialty Clinic Referral in WSIB in provider portal
    And Should be able to access Specialty Clinic Referral and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username      | Password | worklocation                               | role     | Referral Program            |
      | BVUJ200064136 | Welcome2 | 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA | Supplier | Spec. Cl. - Function & Pain |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Smoke
  Scenario Outline: 4 04_Context selection SC referral with 1 address multiple roles mutiple referrals for Clinic user
    Given Clinic users with 1 address multiple role mutiple referrals will be able to access Context selection page in  Specialty Clinic Referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Specialty Clinic Referral application
    Then Should be able to access Specialty Clinic Referral in WSIB in provider portal
    And Should be able to access Specialty Clinic Referral and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username      | Password | worklocation                               | role                 | Referral Program            |
      | HDUI200061040 | Welcome2 | 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA | Clinic - Specialized | Spec. Cl. - Function & Pain |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Regression
  Scenario Outline: 5 05_Context selection Physician referral with 1 address 1 role mutiple referrals for Clinic user
    Given Clinic users with 1 address 1 role mutiple referrals will be able to access Context selection page in physician referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Physician Referral application
    Then Should be able to access Physician Referral in WSIB in provider portal
    And Should be able to access Physician Referral and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username      | Password | worklocation                             | role                      | Referral Program      |
      | BGKI200063110 | Welcome1 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Facility - Rehabilitation | Dental - PhysReferral |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Regression
  Scenario Outline: 6 06_Context selection Physician referral with 1 address multiple roles mutiple referrals for Clinic user
    Given Clinic users with 1 address multiple role mutiple referrals will be able to access Context selection page in physician referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Physician Referral application
    Then Should be able to access Physician Referral in WSIB in provider portal
    And Should be able to access Physician Referral and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username    | Password | worklocation                                  | role                | Referral Program               |
      | KK200063112 | Welcome1 | 61 PEARLDALE AVE NORTH YORK ON M9L 2H2 CANADA | Clinical Laboratory | Phys. Ref. - Lower Back Injury |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Smoke
  Scenario Outline: 07_Context selection Physician referral with 1 address 1 role mutiple referrals for individual user
    Given Clinic or individual users with 1 address 1 role mutiple referrals will be able to access Context selection page in Physician referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Physician Referral application
    Then Should be able to access Physician Referral in WSIB in provider portal
    And Should be able to access Physician Referral and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Physician - Anaesthesia and Referral Program Phys. Ref. - Lower Back Injury

    Examples: 
      | Username      | Password |
      | MEAS200060674 | Welcome1 |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Smoke
  Scenario Outline: 08_Context selection Physician referral with 1 address multiple roles mutiple referrals for individual user
    Given Clinic or individual users with 1 address multiple role mutiple referrals will be able to access Context selection page in Physician referral application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Physician Referral application
    Then Should be able to access Physician Referral in WSIB in provider portal
    And Should be able to access Physician Referral and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username    | Password | worklocation                                | role        | Referral Program               |
      | HP200056608 | Welcome2 | 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA | Chiropodist | Phys. Ref. - Lower Back Injury |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Regression
  Scenario Outline: 09_Context selection non health bill with 1 address multiple roles No referrals for non health Clinic user
    Given Headoffice users with 1 address multiple roles No referrals will be able to access Context selection page in Non-Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Non-Health Bill Submission application
    Then Should be able to access Non-Health Bill Submission in WSIB in provider portal
    And Should be able to access Non-Health Bill Submission and see location <worklocation> and role <role>

    Examples: 
      | Username      | Password | worklocation                               | role         |
      | NUIK200063162 | Welcome1 | 83 WOODSEND RUN BRAMPTON QC L6Y 4G9 CANADA | Accomodation |

  @Regression
  Scenario Outline: 10_Context selection non health bill with 1 address multiple roles No referrals for non health Clinic user
    Given Clinic users with 1 address multiple role no referrals  will be able to access Context selection page in physician referral in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Non-Health Bill Submission application
    Then Should be able to access Non-Health Bill Submission in WSIB in provider portal
    And Should be able to access Non-Health Bill Submission and see location 83 WOODSEND RUN BRAMPTON QC L6Y 4G9 CANADA and role Accomodation

    Examples: 
      | Username      | Password |
      | NUIK200063162 | Welcome1 |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ##############################################
  @Regression
  Scenario Outline: 11_Context selection non health bill  by Head Office user
    Given Headoffice users with multiple location and there roles will be able to access Context selection page in Non-Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Non-Health Bill Submission application
    Then Should be able to access Non-Health Bill Submission in WSIB in provider portal
    And Should be able to access Non-Health Bill Submission and see location <worklocation> and role <role>
    And Should be able to access Non-Health Bill Submission and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA and role Transportation

    Examples: 
      | Username    | Password | worklocation                             | role           |
      | YO200065519 | Welcome1 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Transportation |

  @Regression
  Scenario Outline: 12 Clinic users able to access Context selection screen in eprovider reporting dropdown.
    Given Clinic users with 1 address 1 role multiple referrals  will be able to access Context selection page in eProvider Reporting  in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access eProvider Reporting and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Facility - Rehabilitation and Referral Program MSK - PhysReferral
    And Should be able to access eProvider Reporting and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Facility - Rehabilitation and Referral Program No Program

    Examples: 
      | Username      | Password | worklocation                             | role                      | Referral Program      |
      | BGKI200063110 | Welcome2 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Facility - Rehabilitation | Dental - PhysReferral |

  @smoke
  Scenario Outline: 13 Clinic users able to access Context selection screen in eprovider reporting dropdown.
    Given Clinic users with 1 address 1 role no referrals  will be able to access Context selection page in eProvider Reporting  in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> and role <role>

    Examples: 
      | Username      | Password | worklocation                                | role                 |
      | VEMA200064135 | Welcome1 | 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA | Clinic - Specialized |

  @Regression
  Scenario Outline: 14_Context selection eprovider reporting with 1 address multiple roles mutiple referrals for Clinic user
    Given Individual users with 1 address multiple role multiple referrals will be able to access Context selection page in eProvider Reporting in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username    | Password | worklocation                                  | role                | Referral Program               |
      | KK200063112 | Welcome1 | 61 PEARLDALE AVE NORTH YORK ON M9L 2H2 CANADA | Clinical Laboratory | Phys. Ref. - Lower Back Injury |

  @Regression
  Scenario Outline: 15 Individual users able to access Context selection screen in eprovider reporting dropdown.
    Given Individual users with 1 address 1 role multiple referrals  will be able to access Context selection page in eProvider Reporting  in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access eProvider Reporting and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Chiropractor and Referral Program Phys. Ref. - Lower Back Injury
    And Should be able to access eProvider Reporting and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Chiropractor and Referral Program SC - Medication Substance

    Examples: 
      | Username      | Password | worklocation                             | role         | Referral Program |
      | GITA200060651 | Welcome1 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Chiropractor | No Program       |

  @Regression
  Scenario Outline: 16 Individual users able to access Context selection screen in eprovider reporting dropdown.
    Given Individual users with 1 address multiple role multiple referrals  will be able to access Context selection page in eProvider Reporting  in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access eProvider Reporting and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropodist and Referral Program SC - Medication Substance
    And Should be able to access eProvider Reporting and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropractor and Referral Program External Assessment Services
    And Should be able to access eProvider Reporting and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropractor and Referral Program No Program
    And Should be able to access eProvider Reporting and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropractor and Referral Program Phys. Ref. - Lower Back Injury

    Examples: 
      | Username    | Password | worklocation                                | role        | Referral Program               |
      | HP200056608 | Welcome2 | 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA | Chiropodist | Phys. Ref. - Lower Back Injury |

  @Regression
  Scenario Outline: 17 Individual users able to access Context selection screen in health reporting dropdown.
    Given Individual users with 1 address multiple role multiple referrals  will be able to access Context selection page in Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Health Bill Submission application
    Then Should be able to access Health Bill Submission in WSIB in provider portal
    And Should be able to access Health Bill Submission and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access Health Bill Submission and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropodist and Referral Program SC - Medication Substance
    And Should be able to access Health Bill Submission and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropractor and Referral Program External Assessment Services
    And Should be able to access Health Bill Submission and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropractor and Referral Program No Program
    And Should be able to access Health Bill Submission and see location 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA role Chiropractor and Referral Program Phys. Ref. - Lower Back Injury

    Examples: 
      | Username    | Password | worklocation                                | role        | Referral Program               |
      | HP200056608 | Welcome2 | 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA | Chiropodist | Phys. Ref. - Lower Back Injury |

  @Regression
  Scenario Outline: 18 Clinic users able to access Context selection screen in health reporting dropdown.
    Given Individual users with 1 address 1 role multiple referrals  will be able to access Context selection page in eProvider Reporting  in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access eProvider Reporting and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Optical Store/ Optometry Cl and Referral Program Regional Evaluation Centre
    And Should be able to access eProvider Reporting and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Optical Store/ Optometry Cl and Referral Program Specialty Program - Asthma

    Examples: 
      | Username      | Password | worklocation                             | role                        | Referral Program |
      | FEKA200064189 | Welcome2 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Optical Store/ Optometry Cl | No Program       |

  @Regression
  Scenario Outline: 19 Context selection of health bill with 1 address multiple roles mutiple referrals and associate provider with referral programs for Clinic user
    Given Individual users with 1 address multiple role multiple referrals  will be able to access Context selection page in eProvider Reporting in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access eProvider Reporting and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Facility - Radiology and Referral Program SC - Medication Substance
    And Should be able to access eProvider Reporting and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Facility - Specialized Rehabilitation and Referral Program External Assessment Services
    And Should be able to access eProvider Reporting and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Facility - Specialized Rehabilitation and Referral Program No Program
    And Should be able to access eProvider Reporting and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Facility - Specialized Rehabilitation and Referral Program Phys. Ref. - Musculoskeletal

    Examples: 
      | Username    | Password | worklocation                               | role                 | Referral Program               |
      | BL200064191 | Welcome2 | 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA | Facility - Radiology | Occupational Health Assessment |

  @hold
  Scenario Outline: 20 Context selection health bill  by Head Office user
    #  Given user for health bill referral Context selection.
    Given Head Office users with 1 address multiple role multiple referrals  will be able to access Context selection page in Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Health Bill Submission application
    Then Should be able to access Health Bill Submission in WSIB in provider portal
    And Should be able to access Health Bill Submission and see location <worklocation> role <role> serviceProvider <serviceProvider> Independent Role <Independent Role> and Independent Referral <Independent Referral>

    Examples: 
      | Username    | Password | worklocation                                  | role                      | serviceProvider | Independent Role | Independent Referral |
      | DM200062532 | Welcome2 | 61 PEARLDALE AVE NORTH YORK ON L6W 3G6 CANADA | Facility - Rehabilitation | iowon manas     | Chiropractor     | No Program           |

  Scenario: 01 Clinic (migrated from CPR to TPR) user with 1 location 1 role 1 referral no associate provider
    Given Login with <Username> or <Password>  clinic user in provider portal with with 1 location 1 role 1 referral no associate provider
      | Username        | Password |
      | Clinic Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown menu for Individual should appear.

  Scenario: 02 Merged Ind provider user with multiple location, roles multiple referral access Context selection screen in Health Bill application
    Given Login with <Username> or <Password> individual user with  multiple location, roles multiple referral in provider portal for health Bill application
      | Username        | Password |
      | Clinic Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown menu for Individual should appear.

  @Regression
  Scenario Outline: 03 Clinic (grace period role) with associated provider user with 1 location, 1 role, 1 referral access Context selection screen in Health Bill application
    Given Clinic users with associated provider user with 1 location, 1 role, 1 referral will be able to access Context selection page in Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Health Bill Submission application
    Then Should be able to access Health Bill Submission in WSIB in provider portal
    And Should be able to access Health Bill Submission and see location <worklocation> role <role> and Referral Program <referralProvider>

    Examples: 
      | Username    | Password | worklocation                                | role                       | referralProvider          |
      | TJ200064617 | Welcome1 | 41 ATTRACTION DR BRAMPTON ON L6Y 0C1 CANADA | Community/Soc. Service Ctr | SC - Medication Substance |

  Scenario: 04 Clinic (not grace period role) NO associated provider user with 1 location, 1 role, multiple referral access Context selection screen in Health Bill application
    Given Login with <Username> or <Password> individual user with  1 location, 1 roles 1 referral in provider portal for health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list clinic should appear.

  Scenario: 05 Merged Clinic user (grace period role) with associated providers multiple locations, roles, referrals access Context selection screen in Health Bill application
    Given Login with <Username> or <Password> individual user with multiple location, multiple roles multiple referral in provider portal for health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list clinic should appear
    And Logout

  @OnHold
  Scenario Outline: 06 Head office user with clinic having 1 address 1 role multiple referral no associate providers access Context selection screen in Health Bill application
    Given Head office users with associated provider user with 1 address, 1 role, multiple referral will be able to access Context selection page in Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Health Bill Submission application
    Then Should be able to access Health Bill Submission in WSIB in provider portal
    And Should be able to access Health Bill Submission and see location <worklocation> role <role> and Referral Program <referralProvider>
    And Should be able to access Health Bill Submission and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Facility - Rehabilitation and Referral Program MSK - PhysReferral
    And Should be able to access Health Bill Submission and see location 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA role Facility - Rehabilitation and Referral Program No Program

    Examples: 
      | Username    | Password | worklocation                             | role                      | referralProvider      |
      | VK200069065 | Welcome1 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Facility - Rehabilitation | Dental - PhysReferral |

  Scenario: 07 Merged Clinic user (not grace period role) NO associated providers multiple locations, roles, referrals access Context selection screen in Health Bill application
    Given Login with <Username> or <Password> merged clinic user with no associate multiple location, multiple roles multiple referral in provider portal for health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list clinic should appear.
    And Logout

  @Regression
  Scenario Outline: 08 Head Office user with Merged Clinic NO associated providers
    Given Head Office users with Merged Clinic NO associated providers will be able to access Context selection page in Health Bill Submission in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Health Bill Submission application
    Then Should be able to access Health Bill Submission in WSIB in provider portal
    And Should be able to access Health Bill Submission and see location <worklocation> role <role> and serviceProvider <serviceProvider>

    Examples: 
      | Username    | Password | worklocation                            | role            | serviceProvider |
      | JJ200065520 | Welcome1 | 25 YORK STREE TORONTO ON M5J 2V5 CANADA | Misc. Providers | PENI KOPO       |

  Scenario: 09 Head Office user with Merged Clinic with associated providers
    Given Login with <Username> or <Password> Head office with merged clinic user with no associated provider portal for health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list clinic should appear.
    And Logout

  Scenario: 10 Head office user with clinic having 1 address 1 role associate providers access, provider referrals Context selection screen in Health Bill application
    Given Login with <Username> or <Password> Head office user with Clinic user with 1 address 1 role associate Provider, and provider referral in provider portal for health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location           |
      | Location Role      |
      | referrals          |
      | provider referrals |
      | service Provider   |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list clinic should appear.
    And Logout

  Scenario: 11 Merged Clinic user (not grace period role) NO associated providers multiple locations, roles, referrals access Context selection screen in non-Health Bill application
    Given Login with <Username> or <Password> merged clinic user with no associate multiple location, multiple roles multiple referral in provider portal for non-health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access non-health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list clinic should appear.
    And Logout

  Scenario: 12 Head Office user with Merged Clinic NO associated providers, multiple roles, addressess
    Given Login with <Username> or <Password> Head office user with merged clinic user with no associate provider multiple location, multiple roles provider portal for non-health Bill application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    And Should be able to access non-health referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
    And select mandatory field in context dropdown
    And Click Continue
    Then Payee dropdown list of head office and clinic should appear.
    And Logout

  Scenario: 13 Clinic (migrated from CPR to TPR) user with 1 location 1 role 1 referral no associate provider in eprovider reporting app
    Given Login with <Username> or <Password>  Clinic user (migrated from CPR to TPR) with no associate provider 1 location, 1 roles 1 referral in provider portal for eprovider reporting application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health  application
    Then Should be able to access eprovider referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  Scenario: 14 Merged Ind provider user with multiple location, roles multiple referral access Context selection screen in eprovider reporting application
    Given Login with <Username> or <Password> merged Individual provider user with multiple location, multiple roles multiple referral access context selection in eprovider reporting application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on health health application
    Then Should be able to access health eproivder reporting link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  Scenario: 15 Clinic (grace period role) with associated provider user with 1 location, 1 role, 1 referral access Context selection screen in eprovider reporting application
    Given Login with <Username> or <Password> Clinic(grace period role) with associate provider user with 1 location, 1 roles 1 referral access context selection in eprovider reporting application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on eprovider reporting application
    Then Should be able to access eprovider reporting link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  Scenario: 16 Clinic (not grace period role) NO associated provider user with 1 location, 1 role, multiple referral access Context selection screen in eprovider reporting application
    Given Login with <Username> or <Password> Clicic(not grace period role) No associated provider  user with 1 location, 1 roles multiple referral access context selection in eprovider reporting application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on eprovider reporting application
    Then Should be able to access eprovider reporting link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  Scenario: 17 Merged Clinic user (grace period role) with associated providers multiple locations, roles, referrals access Context selection screen in eprovider reporting application
    Given Login with <Username> or <Password> merged clinic user(grace period role) with associated multiple location, multiple roles multiple referral access context selection in eprovider reporting application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on eprovider reporting application
    Then Should be able to access eproivder reporting referral link in WSIB in provider portal with referral Program options in dropdown
      | clinic Location     |
      | Location Role       |
      | referral            |
      | associated Provider |
      | roles               |
      | referrals           |

  ##############################################
  ##
  ##
  ##Expected result not matching with so many
  ##
  ##
  ###############################################
  @Regression
  Scenario Outline: 18 Merged Clinic user not grace period role NO associated providers multiple locations, roles, referrals access Context selection screen in eProvider Reporting application
    Given Clinic users with merged clinic user(grace period role) 1 address multiple role mutiple referrals will be able to access Context selection page in eProvider Reporting application in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on eProvider Reporting application
    Then Should be able to access eProvider Reporting in WSIB in provider portal
    And Should be able to access eProvider Reporting and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username    | Password | worklocation                             | role                         | Referral Program               |
      | WS200065203 | Welcome1 | 25 YORK STREET TORONTO ON M5J 2V5 CANADA | Medical Radiation Technology | Occupational Health Assessment |

  Scenario: 19 Clinic (migrated from CPR to TPR) user with 1 location 1 role 1 referral no associate provider in Physician referral app
    Given Login with <Username> or <Password> Clinic (migrated from CPR to TPR) user with 1 location, 1 roles 1 referral and no associate provider access context selection in eprovider reporting application
      | Username | Password |
      | Username | Password |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on eprvider reporting application
    Then Should be able to access eprovider reporting link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  @Regression
  Scenario Outline: 20 Merged Ind provider user with multiple location, roles multiple referral access Context selection screen in Physician referral application
    Given Clinic users  with one location, one role multiple referral access will be able to access Context selection page in physician referral in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Physician Referral application
    Then Should be able to access Physician Referral in WSIB in provider portal
    And Should be able to access Physician Referral and see location <worklocation> role <role> and Referral Program <Referral Program>

    Examples: 
      | Username    | Password | worklocation                             | role         | Referral Program             |
      | MV200065269 | Welcome1 | 1 BARKER AVE ETOBICOKE ON M9V 1E4 CANADA | Chiropractor | External Assessment Services |

  ##############################################
  ##
  ##
  ##Permission Issue
  ##
  ##
  ###############################################
  Scenario: 21 Clinic (grace period role) with associated provider user with 1 location, 1 role, 1 referral access Context selection screen in Physician referral application
    Given Login with <Username> or <Password> Clinic (grace period role) with associated provider user with 1 location, 1 roles 1 referral access context selection in physician referral application
      | Username      | Password |
      | ISNE200065128 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on physician referral application
    Then Should be able to access physician referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##Permission Issue
  ##
  ##
  ###############################################
  Scenario: 22 Clinic (not grace period role) NO associated provider user with 1 location, 1 role, multiple referral access Context selection screen in Physician referral application
    Given Login with <Username> or <Password> Clinic (not grace period role) NO associated provider user with 1 location, 1 roles multiple referral access context selection in physician referral application
      | Username      | Password |
      | RIBR200065129 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on physician referral application
    Then Should be able to access physician referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##Permission Issue
  ##
  ##
  ###############################################
  Scenario: 23 Merged Clinic user (grace period role) with associated providers multiple locations, roles, referrals access Context selection screen in Physician referral application
    Given Login with <Username> or <Password> merged Clinic user (grace period role) with associated provider user with multiple location, multiple roles multiple referral access context selection in physician referral application
      | Username      | Password |
      | ROST200065084 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on physician referral application
    Then Should be able to access physician referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##Permission Issue
  ##
  ##
  ###############################################
  Scenario: 24 Merged Clinic user (not grace period role) NO associated providers multiple locations, roles, referrals access Context selection screen in Physician referral application
    Given Login with <Username> or <Password> merged Clinic user (not grace period role) with associated provider user with multiple location, multiple roles multiple referral access context selection in physician referral application
      | Username      | Password |
      | JATA200065085 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on physician referral application
    Then Should be able to access physician referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ###############################################
  Scenario: 25 Clinic (migrated from CPR to TPR) user with 1 location 1 role 1 referral no associate provider in SC referral app
    Given Login with <Username> or <Password> Clinic (migrated from CPR to TPR) user with no associated provider user with 1 location, 1 roles 1 referral access context selection in SC referral application
      | Username      | Password |
      | JATA200065085 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on SC referral application
    Then Should be able to access SC referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##User doesn't have multiple roles
  ##
  ##
  ###############################################
  @Regression
  Scenario Outline: 26 Merged Ind provider user with multiple location, roles multiple referral access Context selection screen in SC referral application
    Given Individual users with multiple location, multiple roles multiple referral  will be able to access Context selection page in  Specialty Clinic Referral in Provider portal
    When Login with <Username> or <Password> user in provider portal
    And In Home page Click on WSIB Link
    And In WSIB Home page Click on Specialty Clinic Referral application
    Then Should be able to access Specialty Clinic Referral in WSIB in provider portal
    And Should be able to access Specialty Clinic Referral and see location <worklocation> role <role> and Referral Program <Referral Program>
    And Should be able to access Specialty Clinic Referral and see location 81 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Massage Therapist and Referral Program No Program
    And Should be able to access Specialty Clinic Referral and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Chiropractor and Referral Program No Program
    And Should be able to access Specialty Clinic Referral and see location 83 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA role Chiropractor and Referral Program Physician Ref. - Hearing Loss

    Examples: 
      | Username    | Password | worklocation                               | role              | Referral Program             |
      | VO200065276 | Welcome1 | 81 WOODSEND RUN BRAMPTON ON L6Y 4G9 CANADA | Massage Therapist | External Assessment Services |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ###############################################
  Scenario: 27 Clinic (grace period role) with associated provider user with 1 location, 1 role, 1 referral access Context selection screen in SC referral application
    Given Login with <Username> or <Password> Clinic user with associated provider user with 1 location, 1 roles 1 referral access context selection in SC referral application
      | Username      | Password |
      | JATA200065085 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on SC referral application
    Then Should be able to access SC referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ###############################################
  Scenario: 28 Clinic (not grace period role) NO associated provider user with 1 location, 1 role, multiple referral access Context selection screen in SC referral application
    Given Login with <Username> or <Password> Clinic (not grace period role) user with no associated provider user with 1 location, 1 roles multiple referral access context selection in SC referral application
      | Username      | Password |
      | JATA200065085 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on SC referral application
    Then Should be able to access SC referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##No user
  ##
  ##
  ###############################################
  Scenario: 29 Merged Clinic user (grace period role) with associated providers multiple locations, roles, referrals access Context selection screen in SC referral application
    Given Login with <Username> or <Password> merged clinic (grace period role) user with  associated provider user with multiple location, multiple roles multiple referral access context selection in SC referral application
      | Username      | Password |
      | JATA200065085 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on SC referral application
    Then Should be able to access SC referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |

  ##############################################
  ##
  ##
  ##No multiple roles because of that no referrals.
  ##
  ##
  ###############################################
  Scenario: 30_Merged Clinic user (not grace period role) NO associated providers multiple locations, roles, referrals access Context selection screen in SC referral application
    Given Login with <Username> or <Password> merged clinic (not grace period role) user with no associated provider user with multiple location, multiple roles multiple referral access context selection in SC referral application
      | Username      | Password |
      | DEJO200065355 | Welcome1 |
      | KADA200065356 | Welcome1 |
    When In Home page Click on WSIB Link
    And In WSIB Home page Click on SC referral application
    Then Should be able to access SC referral link in WSIB in provider portal with referral Program options in dropdown
      | Location      |
      | Location Role |
      | referral      |
