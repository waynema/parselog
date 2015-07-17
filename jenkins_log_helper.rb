#!/usr/bin/ruby

source = ""
source = File.open(ARGV[0]).read

temp = (source.scan(/^rspec \.\/(spec\/features\/.*feature)/)).uniq
puts temp, " ", temp.join(" ")
