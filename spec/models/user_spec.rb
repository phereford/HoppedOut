require 'spec_helper'

describe User do
  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_confirmation_of(:password) }
    it { should ensure_length_of(:password).is_at_least(8) }
    it { should ensure_length_of(:password).is_at_most(128) }
  end

  context 'relationships' do
    it { should have_many(:batches) }
  end
end
