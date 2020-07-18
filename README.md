# Bundler Symlinks

This [Bundler plugin](https://bundler.io/guides/bundler_plugins.html) creates symlinks to the installed Gems.
This makes it possible to use Gems as Node packages without installing them twice.

## Installation

Add this line to your application's Gemfile:

```ruby
plugin "bundler-symlinks", git: 'https://github.com/digineo/bundler-symlinks'
```

## Usage

Execute

    $ bundle install

and symlinks should be created in `.bundle/gems`.
