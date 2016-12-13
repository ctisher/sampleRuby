require 'watir-webdriver'
require './pages/login.rb'
require './common/assertions.rb'
 
login = Login.visit
    
login.headerLoginLink.when_present.click

login.modalLogin

assert('modal login from homepage') { login.headerAccountLink.present? }