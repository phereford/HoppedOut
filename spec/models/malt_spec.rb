require 'spec_helper'

describe Malt do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:srm) }
    it { should validate_presence_of(:origin) }
    it { should validate_presence_of(:potential_sg) }
    it { should validate_presence_of(:type) }
  end
end
