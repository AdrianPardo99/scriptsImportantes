#!/usr/bin/env ruby
if ARGV.length==0
  puts "Error: Usage #{$0} <conver_datas>"
  exit
end
argument=ARGV
argument.each{|arg|
  str=arg.split("-",-1)
  data=str[0].split("_",-1)
  activities=str[1].split(", ",-1)
  activities.each{|act|
    puts "#{data[0]}\t#{data[1]}\t#{data[2]}\t#{act}"
  }
}
