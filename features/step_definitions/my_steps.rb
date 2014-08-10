Given(/^I am on a UK performance page$/) do
  visit 'http://qa.www.seatwave.com/testing-only-tickets/the-test-venue-tickets/31-december-2015/perf/780623'
end

Given(/^I am on a IT performance page$/) do
  visit 'http://qa.www.seatwave.it/testing-only-tickets/the-test-venue-tickets/31-december-2015/perf/780623'
end



When(/^I check out Etickets$/) do
  find(".showmoreoptions").click
  find('label', :text => 'download').click
  find(".btn.buy").click
end

When(/^I check out ReadyForDelivery Ticket$/) do
  find(".showmoreoptions").click
  find("label[for='dtTicketsInHand']").click
  find(".btn.buy").click
end

When(/^I check out CollectFrom Ticket$/) do
  find(".showmoreoptions").click
  find("label[for='dtLMT']").click
  find(".btn.buy").click
end

And(/^fill my UK details$/) do
  find('#SelectedQuantity').select('1')
  find('#UserEmail').set('arnaud.lamotte@seatwave.com')
  find('#ConfirmEmail').set('arnaud.lamotte@seatwave.com')
  find('#Title').find(:xpath, 'option[2]').select_option
  find('#FirstName').set('Arnaud')
  find('#LastName').set('Lamotte')
  find('#Phone').set('07999999999')

  # find('#PaymentDetails_LineOne').set('120 Moorgate')
  # find('#PaymentDetails_Town').set('London')
  # find('#PaymentDetails_Postcode').set('EC2M 6UR')

end



And(/^fill my IT details$/) do
  find('#SelectedQuantity').select('1')
  find('#UserEmail').set('arnaud.lamotte@seatwave.com')
  find('#ConfirmEmail').set('arnaud.lamotte@seatwave.com')
  find('#Title').find(:xpath, 'option[2]').select_option
  find('#FirstName').set('Arnaud')
  find('#LastName').set('Lamotte')
  find('#Phone').set('07999999999')
  find('label', :text => 'Accetto').click
end

And(/^my Delivery details$/) do
  find('#deliveryAddressManual').click
  find('#DeliveryAddress_Name').set('arnaud lamotte')
  find('#DeliveryAddress_LineOne').set('street')
  find('#DeliveryAddress_Town').set('town')
  find('#DeliveryAddress_Postcode').set('ec1r1dp')
end




Then(/^I can pay by Visa$/) do
  find('.Visa label').click
  find('#PaymentDetails_NameOnCard').set('Arnaud Lamotte')
  find('#PaymentDetails_CardNumber').set('4111111111111111')
  find('#PaymentDetails_ExpiryMonth').select('06')
  find('#PaymentDetails_ExpiryYear').select('2016')
  find('#PaymentDetails_SecurityCode').set('737')
  find('label', :text => 'agree').click
  find('#buyTickets').click
  #find('.fb#modal-content')
  find('p', :text => 'Thanks for your order!')
end


Then(/^I can pay by Mastercard$/) do
  find('.Mastercard label').click
  find('#PaymentDetails_NameOnCard').set('Arnaud Lamotte')
  find('#PaymentDetails_CardNumber').set('5555444433331111')
  find('#PaymentDetails_ExpiryMonth').select('06')
  find('#PaymentDetails_ExpiryYear').select('2016')
  find('#PaymentDetails_SecurityCode').set('737')
  find('label', :text => 'agree').click
  find('#buyTickets').click
  #find('.fb#modal-content')
  find('p', :text => 'Thanks for your order!')
end

Then(/^I can pay by Amex$/) do
  find('.AmericanExpress label').click
  find('#PaymentDetails_NameOnCard').set('Arnaud Lamotte')
  find('#PaymentDetails_CardNumber').set('370000000000002')
  find('#PaymentDetails_ExpiryMonth').select('06')
  find('#PaymentDetails_ExpiryYear').select('2016')
  find('#PaymentDetails_SecurityCode').set('7373')
  find('label', :text => 'agree').click
  find('#buyTickets').click
  find('p', :text => 'Thanks for your order!')
end

Then(/^I can pay by Paypal$/) do
  find(".PaypalPayment label").click
  find('label', :text => 'agree').click
  find('#buyTickets').click
  find('#login_email').set 'buyer@seatwave.dev'
  find('#login_password').set 'seatwave'
  click_button('submitLogin')
  click_button('continue_abovefold')
  find('#confirmPayment').click
  find('p', :text => 'Thanks for your order!')
end

Then(/^I can pay by Maestro$/) do
  find('.Maestro label').click
  find('#PaymentDetails_NameOnCard').set('Arnaud Lamotte')
  find('#PaymentDetails_CardNumber').set('6759649826438453')
  find('#PaymentDetails_ExpiryMonth').select('06')
  find('#PaymentDetails_ExpiryYear').select('2016')
  find('#PaymentDetails_SecurityCode').set('737')
  find('#PaymentDetails_StartMonth').select('12')
  find('#PaymentDetails_StartYear').select('2007')
  find('#PaymentDetails_IssueNumber').set('1')
  find('label', :text => 'agree').click
  find('#buyTickets').click
  find('p', :text => 'Thanks for your order!')
end


And(/^fill my UK billing details$/) do
  find('#billingAddress .enterAddress a').click
  find('#PaymentDetails_LineOne').set('120 Moorgate')
  find('#PaymentDetails_Town').set('London')
  find('#PaymentDetails_Postcode').set('EC2M 6UR')
end


Given(/^I am on a Milan page$/) do
  visit 'http://qa.www.seatwave.com/ac-milan-tickets/season'
end

And(/^view the tickets$/) do
  find('.buy').click
end

And(/^buy (\d+) tickets$/) do |arg|
  find('.btn.buy').click
end

When(/^I fill attendees details$/) do
  find('#buyTickets').click
  find('#Attendees_0__FirstName').set('arnaud')
  find('#Attendees_0__LastName').set('lamotte')
  find('#Attendees_0__DateOfBirth').click
  find('.ui-datepicker-year').select('1970')
  find('.ui-datepicker-month').select('Mar')
  find(:xpath,'/html/body/div[2]/table/tbody/tr[3]/td[4]').click
  find('#Attendees_0__PlaceOfBirth').set('st ger')
  # find('.btn.next-step').click
  # find('#Attendees_1__FirstName').set('renaud')
  # find('#Attendees_1__LastName').set('lamotte')
  # find('#Attendees_1__DateOfBirth').click
  # find('.ui-datepicker-year').select('1980')
  # find('.ui-datepicker-month').select('Feb')
  # find(:xpath,'/html/body/div[2]/table/tbody/tr[3]/td[4]').click
  # find('#Attendees_1__PlaceOfBirth').set('paris')
end