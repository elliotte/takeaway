require 'twilio-ruby'

class TwilioWrapper
  def initialize
    account_sid = 'AC4a881869c532d92f055c5c6d6b88a3e2'
		auth_token = 'f740731047cb0ab6bcaf440b69e812a5'
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_sms(message)
		@client.account.sms.messages.create({
      from: '+441925321642', to: '+491722577800', body: message})
    message
  end
end
