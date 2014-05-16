
adv = Adventure.create!(:title => "#{title}'s Test Adventure",
	:author => name)
adv.pages.create!(:title => "start",
	:text => "This is a great text adventure which is beginning right now!  I can't wait to [[see the end|end]]")
adv.pages.create!(:title => "end",
	:text => "Wow that adventure was amazing!")