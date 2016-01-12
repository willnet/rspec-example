require 'rails_helper'

describe 'welcome', js: true do
  before do
    User.create(name: 'willnet')
  end

  context 'when visit root path' do
    before { visit root_path }

    context 'and click "willnet"' do
      before { click_on 'willnet' }

      it 'display "welcome"' do
        expect(page).to have_no_content 'hoge'
      end

      it 'display user names' do
        expect(page).to have_content 'willnet'
      end
    end
  end
end
