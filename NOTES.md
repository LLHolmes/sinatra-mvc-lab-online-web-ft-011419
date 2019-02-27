class PigLatinizer
X can create a new instance of a class
  piglatinizes an individual word (FAILED - 1)
  has a method splits the sentence to piglatinize each word (FAILED - 2)

Pig Latinizer App
  GET '/'
  X  returns a 200 status code
  X  renders the instructions
  X  renders a new form element on the page
  X  renders the form directions on the page
  X  renders the input field for the phrase
  POST '/piglatinize'
    returns a 200 status code (FAILED - 3)
    displays the pig latinized phrase upon form submission (FAILED - 4)
  POST '/piglatinize' again
    returns a 200 status code (FAILED - 5)
    displays the pig latinized phrase upon form submission (FAILED - 6)

Failures:

  1) class PigLatinizer piglatinizes an individual word
     Failure/Error: expect(words.piglatinize("pork")).to eq("orkpay")

     TypeError:
       no implicit conversion of Regexp into String
     # ./models/piglatinizer.rb:11:in `start_with?'
     # ./models/piglatinizer.rb:11:in `block in piglatinize'
     # ./models/piglatinizer.rb:10:in `map'
     # ./models/piglatinizer.rb:10:in `piglatinize'
     # ./spec/models/piglatinizer_spec.rb:10:in `block (2 levels) in <top (required)>'

  2) class PigLatinizer has a method splits the sentence to piglatinize each word
     Failure/Error: expect(words.piglatinize("i love programming")).to eq("iway ovelay ogrammingpray")

     TypeError:
       no implicit conversion of Regexp into String
     # ./models/piglatinizer.rb:11:in `start_with?'
     # ./models/piglatinizer.rb:11:in `block in piglatinize'
     # ./models/piglatinizer.rb:10:in `map'
     # ./models/piglatinizer.rb:10:in `piglatinize'
     # ./spec/models/piglatinizer_spec.rb:23:in `block (2 levels) in <top (required)>'

  3) Pig Latinizer App POST '/piglatinize' returns a 200 status code
     Failure/Error: expect(last_response.status).to eq(200)

       expected: 200
            got: 500

       (compared using ==)
     # ./spec/sinatra_mvc_lab_spec.rb:39:in `block (3 levels) in <top (required)>'

  4) Pig Latinizer App POST '/piglatinize' displays the pig latinized phrase upon form submission
     Failure/Error: expect(last_response.body).to include("Onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay asway away oocowmay omingcay ownday alongway ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay")

       expected "<!DOCTYPE html>\n<html>\n<head>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ut...nabled the <code>show_exceptions</code> setting.</p>\n  </div> <!-- /WRAP -->\n  </body>\n</html>\n" to include "Onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay asway away oocowmay...sway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay"

5) Pig Latinizer App POST '/piglatinize' again returns a 200 status code
   Failure/Error: expect(last_response.status).to eq(200)

     expected: 200
          got: 500

     (compared using ==)
   # ./spec/sinatra_mvc_lab_spec.rb:55:in `block (3 levels) in <top (required)>'

6) Pig Latinizer App POST '/piglatinize' again displays the pig latinized phrase upon form submission
   Failure/Error: expect(last_response.body).to include("eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay")

     expected "<!DOCTYPE html>\n<html>\n<head>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ut...nabled the <code>show_exceptions</code> setting.</p>\n  </div> <!-- /WRAP -->\n  </body>\n</html>\n" to include "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
     Diff:
