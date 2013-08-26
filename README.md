# Jdl

<!-- TODO: Write a gem description -->
根据指定目录，扫描内部扩展名为*的所有文件，并输出到jdl.js内，主要用于js测试

TODO:

- 增加生成模板，可以从本地读取

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
      -d. --verbose                    print debug log
      
      
- '-p' 指定扫描路径       ：  默认值   .
- '-e' 指定扫描文件的扩展名 ： 默认值   js
- '-o' 指定输出文件名称    ： 默认值   jdl.js
- '-d' 是否打印日志       ： 默认值   false


### 模板用法

创建t.txt 

    <aa>##item##<aa>
    
生成的文件

    ➜  jdl git:(master) ✗ cat jdl.js 
    <aa>./test/collection.js<aa>
    <aa>./test/environment.js<aa>
    <aa>./test/events.js<aa>
    <aa>./test/model.js<aa>
    <aa>./test/noconflict.js<aa>
    <aa>./test/router.js<aa>
    <aa>./test/sync.js<aa>
    <aa>./test/vendor/backbone.js<aa>
    <aa>./test/vendor/jquery.js<aa>
    <aa>./test/vendor/json2.js<aa>
    <aa>./test/vendor/qunit.js<aa>
    <aa>./test/vendor/runner.js<aa>
    <aa>./test/vendor/underscore.js<aa>
    <aa>./test/view.js<aa>

测试方法

    ruby -Ilib bin/jdl -p .  -t t.txt

## Test

    ruby -Ilib bin/jdl

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

this project is released under the MIT license:

http://www.opensource.org/licenses/mit-license.php


## 欢迎fork和反馈
在issue提问或邮件shiren1118@126.com