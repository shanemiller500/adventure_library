name = "Shane Miller"
adv = Adventure.create!(:title => "#{name}'s Test Adventure", :author => name)
adv.pages.create!(:name => "start", :text => "This is a great text adventure which is beginning right now!  I can't wait to [[see the end|end]]")
adv.pages.create!(:name => "end", :text => "Wow that adventure was amazing!")

name = "Shane Miller"
adv = Adventure.create!(:title => "#{name}'s Test Adventure",
 :author => name)
adv.pages.create!(:name => "start", :text => "This is a great text adventure which is beginning right now!  I can't wait to [[see the end|end]]")
adv.pages.create!(:name => "end", :text => "Wow that adventure was amazing!")

name = "Shane Miller"
adv = Adventure.create!(:title => "#{name}'s Test Adventure", :author => name)
adv.pages.create!(:name => "start", :text => "This is a great text adventure which is beginning right now!  I can't wait to [[see Don Draper die!!!!|end]] or [[live!!!!|end2]]")
adv.pages.create!(:name => "end", :text => "The show is over!")
adv.pages.create!(:name => "end2", :text => "The show must go on! [[see Don Draper die!!!!|en1]] or [[live!!!!|en2]]")

adv.pages.create!(:name => "en1", :text => "The show is over!")
adv.pages.create!(:name => "en2", :text => "The show  Must go on!!!! [[see Don Draper die!!!!|en1]] or [[live!!!!|en2]] ")