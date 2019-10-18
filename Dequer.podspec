

#
# Be sure to run `pod lib lint pop100z.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

s.name             = 'Dequer'
s.version          = '1.2.3'
s.summary          = 'Light weight library to handle Any Cell'
s.description      = 'One of the most used things in iOS development is deque UITableViewCell and it has some configuration. I maded an extension and protocol which initialize a cell as clean as possible.

'
s.homepage         = 'https://github.com/mohamadrezakoohkan/Dequer'
s.author           = { 'mohamadrezakoohkan' => 'mohamad_koohkan@icloud.com' }
s.ios.deployment_target = '9.3'
s.source           = { :git => 'https://github.com/mohamadrezakoohkan/Dequer.git', :tag => s.version  }
s.swift_version = '4.0'
s.source_files = 'Source/**/*'
s.license          = { :type => 'MIT', :text => <<-LICENSE
    MIT License
    
    Copyright (c) 2019 mohamad reza koohkan
    
    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
LICENSE
}
end
