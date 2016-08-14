Feature: {{TITLE}}
  In order write dojo
  As a programmer
  I want to create a simulation

  Scenario: Version displayed
    Given I am in buffer "inital"
    When I call "version"
    Then I should see message "0.0.1"

  Scenario: Simulation creates new buffer
    Given I am in buffer "inital"
    When I run the simulation
    Then I should be in buffer "*{{REPOSITORY}}*"

  Scenario: Simulation quit
    Given I am in buffer "inital"
    When I run the simulation and quit
    Then I should be in buffer "inital"
    And I should see message "Simulation ended."
