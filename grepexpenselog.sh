#ef1.list is the output that you want to paste to your local for rerun
#ex.txt is your feauture run log contents
grep "rspec ./spec/features/" ex.txt| egrep -o '^[^:]+'>ee.list
cut -c7- ee.list>eexpensefail.list
awk '!a[$0]++' eexpensefail.list>efail.list
tr '\n' ' '<efail.list>ef1.list
