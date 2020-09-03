"""
These test cases are written in BDD format
"""

Feature: Public API Test Scenarios

  """
  base url: https://api.publicapis.org
  possible values of path: /entries, /categories, /health
  In one scenario, 3 test cases will executed for 3 APIs as below:
  https://api.publicapis.org/entries
  https://api.publicapis.org/categories
  https://api.publicapis.org/health
  """
  @positiveTest, @automated
  Scenario Outline: Validate the response code, headers and body for base url "https://api.publicapis.org" with path
    Given the base url is formed
    When the request is submitted for path"<path>" with base url
    Then validate the response code as "200"
    And validate response headers for "<path>"
    And validate the response body

    Examples:
      | path       |
      | entries    |
      | categories |
      | health     |

  @negativeTest, @manual
  Scenario Outline: Validate the response code, headers and body for base url "https://api.publicapis.org" with invalid path
    Given the base url is formed
    When the request is submitted for path"<path>" with base url
    Then validate the response code as "404"
    And validate response headers for "<path>"
    And validate the response body

    Examples:
      | path     |
      | entry    |
      | category |
      | healths  |

  """
  base url: https://api.publicapis.org
  possible values of path: /entries
  possible values for queryparams: for category: animals, books, jobs. for https: true, false
  In one scenario, 3 test cases will executed for 3 APIs as below:
  https://api.publicapis.org/entries?category=animals&https=true
  https://api.publicapis.org/entries?category=books&https=false
  https://api.publicapis.org/entries?category=jobs&https=true
  """
  @positiveTest, @manual
    Scenario Outline: Validate the response code, headers and body for base url "https://api.publicapis.org" with path and query parameters
    Given the base url is formed
    And the "entries" is appended with base url
    When the request is submitted for queryparam "category" as "<query>" with base url and httpsquery "https" as "<httpsquery>"
    Then validate the response code as "200"
    And validate response headers
    And validate the response body for "<query>" and "<httpquery>"

    Examples:
      | query   | httpsquery |
      | animals | true       |
      | books   | false      |
      | jobs    | true       |

    """
    These test cases are written in BDD format
    """