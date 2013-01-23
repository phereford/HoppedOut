require 'spec_helper'

describe Batch do
  context 'relationships' do
    it { should have_many(:batch_items) }
  end

  context 'validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:size) }
    it { should validate_presence_of(:color) }
    it { should validate_presence_of(:bitterness) }
    it { should validate_presence_of(:alcohol) }
    it { should validate_presence_of(:calories) }
    it { should validate_presence_of(:gravity) }
    it { should validate_presence_of(:efficiency) }
  end
end
