#!/usr/bin/ruby

source = ""
source = File.open(ARGV[0]).read

temp = (source.scan(/(spec\/features\/.*feature)/)).uniq
rbtemp = (source.scan(/(spec\/features\/.*rb)/)).uniq
puts temp, " ", rbtemp, " ", temp.join(" ")+" "+rbtemp.join(" ")
