# RSpec/Capybara Sample Automation Test

## Instructions
* Install RVM from [here](https://rvm.io/rvm/install/)
* Clone this repository. This clones a '.rvmrc' along with the other required files.
```bash
git clone git@github.com:ajeya/automation_template.git
```

* Run the following commands from the same directory as the rest of your code

```bash
cd automation_template
source .rvmrc
gem install bundler
bundle install
```

* In 'sample.rspec.rb' update the following lines: 

```ruby
Capybara.app_host = "http://some.url.com"

fill_in "username", with: "some-username"
fill_in "password", with: "some-password"
```
* Run the following command to check if everything is installed and runs correctly.

```bash
rspec sample.rspec.rb
```
* For an up-to-date Capybara cheatsheet refer to [this gist](https://gist.github.com/4249173)
