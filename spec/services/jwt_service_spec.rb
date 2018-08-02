require 'rails_helper'

RSpec.describe JwtService do
  subject { described_class }

  let(:payload) { { 'one' => 'two' } }
  let(:token) { "eyJhbGciOiJIUzI1NiJ9.eyJvbmUiOiJ0d28ifQ.IRarpQkNxRK0aIrHvlrYUjmib5gBPxwJjIUKf7ftHFc" }

  describe "#encode" do
    it { expect(subject.encode(payload)).to eq(token) }
  end

  describe "#decode" do
    it { expect(subject.decode(token)).to eq(payload) }
  end
end
