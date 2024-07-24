class LeadsController < ApplicationController
    protect_from_forgery except: :webhook
  
    def webhook
      challenge = params['hub.challenge']
      token = params['hub.verify_token']
  
      if token == 'YOUR_VERIFY_TOKEN'
        render plain: challenge
      else
        head :forbidden
      end
    end
  
    def receive_lead
      lead_data = params['entry'][0]['changes'][0]['value']
      save_lead(lead_data)
    end
  
    private
  
    def save_lead(lead_data)
      lead = Lead.new(name: lead_data['name'], email: lead_data['email'])
      if lead.save
        render json: { message: 'Lead saved successfully' }, status: :ok
      else
        render json: { error: 'Failed to save lead' }, status: :unprocessable_entity
      end
    end
  end