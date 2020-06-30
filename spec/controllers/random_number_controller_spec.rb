require 'rails_helper'

RSpec::Matchers.define :be_between do |lower, upper|
  match do |number|
    number >= lower && number <= upper
  end
end

describe 'GET /random_number', type: :request do
  let(:seed) { nil }
  let(:json) { JSON.parse(response.body) }

  subject { json['random_number'] }

  before { get '/random_number' }

  it { is_expected.to be_a Float }
  it { is_expected.to be_between 0, 1 }
end
