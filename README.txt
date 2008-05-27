Converts traditional to simplified Chinese and vice versa.

Installation:
--------------
sudo gem install matta-han-converter --source=http://gems.github.com

Usage:
------

>> require 'han-converter'
=> true
>> "在您的手機上觀看和上載 YouTube 影片".to_simplified
=> "在您的手机上观看和上载 YouTube 影片"

>> "在您的手机上观看和上载 YouTube 影片".to_traditional
=> "在您的手機上觀看咊上載 YouTube 影片"

It won't be as good as manual translation but it works ok for me. The speed can probably be improved by going down to C land, but I don't have time to do that right now and I probably won't really need the speed for a little while.

-Matt

matt aimonetti [at] gmailDotCom