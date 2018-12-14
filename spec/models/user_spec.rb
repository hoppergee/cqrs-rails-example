require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it 'requries first_name to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:first_name].size).to eq(1)
    end
    it 'requries last_name to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:last_name].size).to eq(1)
    end
  end

end