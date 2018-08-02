class JwtService
  HMAC_SECRET = Rails.application.secret_key_base

  class << self
    def encode(payload)
      JWT.encode(payload, HMAC_SECRET, 'HS256')
    end

    def decode(token)
      body, = JWT.decode(token, Rails.application.secret_key_base,
                         true, algorithm: 'HS256')
        HashWithIndifferentAccess.new(body)
      rescue JWT::ExpiredSignature
        nil
    end
  end
end
