Feature: Update
  In order to keep my privacy
  As a user
  I want to update a password entry

  Scenario: Set a new password for "github"
    Given A safe exists with master password "my_master_password" and a key "github" with password "old_password"
    When I run `pws update github` interactively
    And  I type "my_master_password"
    And  I type "new_password"
    Then the output should contain "Master password:"
    And  the output should contain "Please enter a new password for github:"
    And  the output should contain "The password for github has been updated"
    
  
  Scenario: Set a new password for "github", already passing it as command line paramenter (not recommended)
    Given A safe exists with master password "my_master_password" and a key "github" with password "old_password"
    When I run `pws update github new_password` interactively
    And  I type "my_master_password"
    Then the output should contain "Master password:"
    And  the output should contain "The password for github has been updated"
    
  Scenario: Try to update the password for "github" (but it does not exist)
    Given A safe exists with master password "my_master_password"
    When I run `pws update github` interactively
    And  I type "my_master_password"
    Then the output should contain "Master password:"
    And  the output should contain "There is no password stored for github, so you cannot update it!"
    
  
  Scenario: Try to update the password for "github" (but it's empty)
    Given A safe exists with master password "my_master_password" and a key "github" with password "old_password"
    When I run `pws update github` interactively
    And  I type "my_master_password"
    And  I type ""
    Then the output should contain "Master password:"
    And  the output should contain "Please enter a new password for github:"
    And  the output should contain "Cannot set an empty password!"
    
  Scenario: Try to update the password for "github" (but the master password is wrong)
    Given A safe exists with master password "my_master_password"
    When I run `pws update github` interactively
    And  I type "my_master_password_wrong"
    Then the output should contain "Master password:"
    And  the output should contain "NO ACCESS"
    
  
  Scenario: Set a new password for "github", this also sets the timestamp
    Given A safe exists with master password "my_master_password" and a key "github" with password "old_password"
    When I run `pws update github github_password` interactively
    And  I type "my_master_password"
    And  I run `pws show` interactively
    And  I type "my_master_password"
    Then the output should contain the current date
    
  
