require 'sinatra/base'
require 'sinatra/activerecord'
require './environment'
require 'twilio-ruby'
# require 'airbrake'

class Apps::App < Sinatra::Base

  set :method_override, true
  set :logger, $stdout

  # There's a lot going on in this block. Should refactor as a service object.
  post '/subscriptions' do
    content_type 'text/xml'
    phone   = params['From']
    trip_id = params['Body']

    user = User.find_or_create_by phone: phone
    trip = Trip.find trip_id

    # Prevents duplicate subscriptions.
    # If this is an application requirement, we may want to back it up
    # elsewhere, such as having a uniqueness database index
    # and model validation.
    @subscription = Subscription.find_or_initialize_by(user: user, trip: trip)

    response = if @subscription.save
      Twilio::TwiML::Response.new do |r|
        r.Message "Ok! We'll let you know when trip #{trip.id} is ready to board."
      end
    else
      Twilio::TwiML::Response.new do |r|
        r.Message "An unexpected error occurred."
      end
    end
    response.to_xml
  end


  error ActiveRecord::RecordNotFound do
    status 404
    Twilio::TwiML::Response.new do |r|
      msg = "We can't find a trip with that ID on the board."
      msg << "You may want to double-check the ID you sent."
      r.Message msg
    end.to_xml
  end

end
