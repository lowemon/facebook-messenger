module Facebook
  module Messenger
    module Incoming
      # The Postback class represents an incoming Facebook Messenger
      #   postback events.
      # @see https://developers.facebook.com/docs/messenger-platform/reference/webhook-events/messaging_postbacks
      class Invoice
        include Facebook::Messenger::Incoming::Common
        class Invoice
          def initialize(invoice)
            @invoice = invoice
          end
          # Return String of developer defined payload.
          def payload
            @messaging['entry']
          end
          def obj
            @messaging['object']
          end
          # Return hash containing the referral information of user.
          def invoice
            @invoice ||= Invoice.new(
              @messaging
            )
          end
        end
      end
    end
  end
end