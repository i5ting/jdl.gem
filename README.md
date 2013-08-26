# Jdl

<!-- TODO: Write a gem description -->
根据指定目录，扫描内部扩展名为*的所有文件，并输出到jdl.js内，主要用于js测试

## Installation

Add this line to your application's Gemfile:

    gem 'jdl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jdl

## Usage


  ➜  jdl git:(master) ✗ jdl --help
  import js from directory loader .
      -p, --path                       Set options as path
      -e, --file_ex                    Set options as file_ex
      -o, --output                     Set options as :output_name
      
      
- '-p' 指定扫描路径       ：  默认值   .
- '-e' 指定扫描文件的扩展名 ： 默认值   js
- '-o' 指定输出文件名称    ： 默认值   jdl.js

## Test

  ruby -Ilib bin/jdl

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
