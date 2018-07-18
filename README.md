# ToDo-Ruby
Simple TODO manager written on Ruby 2.5.1

## Development Gems
- [Bundler](https://github.com/bundler/bundler) for managing application's dependencies
- [Rubocop](https://github.com/rubocop-hq/rubocop) for reporting violations of the Ruby style guide


## Getting Started

### Clone application
```
git clone https://github.com/timbaev/ToDo-Ruby.git
```

### Prepare dependencies
Install dependency manager
```
gem install bundler
```
Setup required dependencies from `Gemfile`:
```
bundle install
```

### Run application
```
ruby main.rb
```

## How to use?
Add new task to TODO manager
```
--add NEW TASK
```
Show list of tasks
```
--list
```
Mark task as done
```
--done TASK_ID
```
Delete task
```
--delete TASK_ID
```
