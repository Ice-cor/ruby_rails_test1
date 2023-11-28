require 'rails_helper'

RSpec.describe User, type: :model do
    it '有 email' do   #
      user = User.new email: 'test@1.com'
      expect(user.email).to eq 'test@1.com'
    end
end
