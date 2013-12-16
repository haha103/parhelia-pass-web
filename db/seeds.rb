# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(100) do
	k = "taobao#{rand(1..100)}"
	o = "Liu Wei-#{rand(1..100)}"
	u = "haha#{rand(100..300)}"
	p = "haha#{rand(300..500)}"
	cat = "category#{rand(1..100)}"
	com = "comment#{rand(1..100)}"
	Entry.create(:key => k, :owner => o, :user => u, :password => p, :category => cat, :comments => com)
end
