require 'spec_helper'

describe 'Homepage', js:true do
  context 'User is not signed in' do
    before do
      visit root_path
    end

    describe 'Header' do
      describe 'Navigation' do
        it 'should show main navigation' do
          within '#header' do
            should_have_contents ['Hot', 'Restaurants', 'Dishes', 'About', 'Account']
          end
        end
      end

      describe 'Account menu' do
        it 'should show dropdown menu when clicking on Account' do
          within '#header' do
            click_on 'Account'

            expect(page).to have_css '.dropdown-menu', visible: true
            within '.dropdown-menu' do
              should_have_links [['Register', new_user_registration_path], ['Sign In', new_user_session_path]]
            end
          end
        end
      end

      describe 'Submenus' do
        it 'should show Hot submenus' do
          within '#header' do
            click_on 'Dishes'
            click_on 'Hot'
          end

          expect(page).to have_css '#subnav3', visible: false
          expect(page).to have_css '#subnav1', visible: true
          within '#subnav1' do
            should_have_links ['Hot dishes', 'Hot restaurants']
          end
        end

        it 'should show Restaurants submenus' do
          within '#header' do
            click_on 'Hot'
            click_on 'Restaurants'
          end

          expect(page).to have_css '#subnav1', visible: false
          expect(page).to have_css '#subnav2', visible: true
          within '#subnav2' do
            should_have_links ['Search restaurants', 'Browse restaurants', 'My restaurants', 'Create restaurant']
          end
        end

        it 'should show Dishes submenus' do
          within '#header' do
            click_on 'Restaurants'
            click_on 'Dishes'
          end

          expect(page).to have_css '#subnav2', visible: false
          expect(page).to have_css '#subnav3', visible: true
          within '#subnav3' do
            should_have_links ['Search dishes', 'Browse dishes']
          end
        end
      end
    end
  end

  context 'User is signed in' do
    let(:user) { create(:user) }
    before do
      login user
      visit root_path
    end

    describe 'Header' do
      describe 'Navigation' do
        it 'should show main navigation' do
          within '#header' do
            expect(page).to have_content "Account (#{user.name})"
          end
        end
      end
    end

    describe 'Account menu' do
      it 'should show signed in dropdown menu when clicking on Account' do
        within '#header' do
          click_on 'Account'

          expect(page).to have_css '.dropdown-menu', visible: true
          within '.dropdown-menu' do
            should_have_links ['My Account', ['Sign Out', destroy_user_session_path]]
          end
        end
      end
    end
  end
end