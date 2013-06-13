include Warden::Test::Helpers
Warden.test_mode!

def login(user)
  login_as(user, :scope => :user)
end

def should_have_contents(contents)
  contents.each do |content|
    expect(page).to have_content content
  end
end

def should_have_links(links)
  links.each do |text, url|
    if url
      expect(page).to have_link text, href: url
    else
      expect(page).to have_link text
    end
  end
end