module Picpay

  module Payment

    attr_accessor :reference_id, :callback_url, :return_url, :value, :expires_at

    def data_payment
      payment = {
          "referenceId": reference_id,
          "callbackUrl": callback_url,
          "value": value,
          "buyer": data_buyer,
      }
      payment["returnUrl"] = return_url unless return_url.nil?
      payment["expiresAt"] = format_date(expires_at) unless expires_at.nil?
      payment
    end

    private

    def format_date(date)
      DateTime.parse(date).iso8601()
    end

  end

end
