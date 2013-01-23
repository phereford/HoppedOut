require 'spec_helper'

describe BatchItem do
  context 'validations' do
    it { should validate_presence_of(:batch) }
    it { should validate_presence_of(:itemable) }
  end
end
