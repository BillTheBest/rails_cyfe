# RailsCyfe

This gem provide intregration of Ruby on Rails projects with Cyfe Dashboard. In this custom widget are made with push API you can send your data in JSON format. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_cyfe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_cyfe
    
Dependencies with rails_cyfe:

  Runtime dependencies: 

    'httparty', '~> 0.8', '>= 0.8.1'
    
  Development dependencies:

    "bundler", "~> 1.11"
    "rake", "~> 10.0"

## Usage

##### Methods:

######  push_uri:
  
  This method used to  config  the cyfe push API (widget end  point)  with rails_cyfe

```ruby
uri = Cyfe::Rails_cyfe.new

uri.push_uri(‘https://app.cyfe.com/api/push/5635385’)
```

######  counter:
  
  This method send the data to your cyfe custom API widget

```ruby
widget = Cyfe::Rails_cyfe.new

widget.counter(count)
```
  Count is the data to be send in string form. Convert your hash into json format
  
  Example Request (JSON)
```ruby
count = {
        "data":  [
                {
                        "Date":  "20130320",
                        "Users":  "1"
                }
        ],
        "onduplicate":  {
                "Users":  "replace"
        },
        "color":  {
                "Users":  "#52ff7f"
        },
        "type":  {
                "Users":  "line"
        }
}
```  


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_cyfe.
