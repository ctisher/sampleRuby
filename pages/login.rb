class Login
    def initialize
        @browser = Watir::Browser.new :chrome
        @browser.goto 'https://stg.nordstromrack.com/'
    end
 
    def self.visit
        new
    end

    def headerLoginLink
        @browser.link(text: 'Log In / Sign Up')
    end

    def modalLogin
        @browser.link(text: 'Log In').when_present.click
        @browser.text_field(name: 'email').set 'ct5@example.com'
        @browser.text_field(name: 'password').set 'qwerty'
        @browser.div(class: 'authentication-modal__submit').click
    end

    def headerAccountLink
        @browser.link(class: 'secondary-nav__link')
    end        
 
    def close
        @browser.close
    end

end