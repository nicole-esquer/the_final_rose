require 'rails_helper'

RSpec.describe Outing, type: :model do
  describe 'has validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :location }
    it { should validate_presence_of :date }
  end
end
