Feature : API Testing for restful-booker.herokuapp.com

    Scenario : Get all bookings
      Given url 'https://restful-booker.herokuapp.com'
      When method GET
      Then status 200
      
    Scenario : Create a booking
       Given url 'https://restful-booker.herokuapp.com'
       And request {"firstname": "Jim", "lastname": "Brown","totalprice": 111,"depositpaid": true,"bookingdates": { "checkin": "2022-02-23", "checkout": "2023-10-23"} "additionalneeds": "Breakfast"}
       When method post
       Then status 200 
   
    Scenario: Update booking
        Given url 'https://restful-booker.herokuapp.com'
        And request { "firstname": "UpdatedJames", "lastname": "UpdatedDoe", "totalprice": 120, "depositpaid": false, "bookingdates": { "checkin": "2023-02-01", "checkout": "2023-02-10" }, "additionalneeds": "None" }
        When method put
        Then status 200
       
    Scenario: Partially update booking
        Given url 'https://restful-booker.herokuapp.com'
        And request { "totalprice": 180, "bookingdates": { "checkout": "2023-02-15" } }
        When method patch
        Then status 200
        ss
    Scenario: Delete booking
        Given url 'https://restful-booker.herokuapp.com'
        When method delete
        Then status 200
         