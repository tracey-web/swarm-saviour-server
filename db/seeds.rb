User.destroy_all

User.create(:email => "charlie.smith@gmail.com", :password => "chicken99", :name => "Charlie Smith", :phone => "0419324325", :lat => 147.40917944182112, :long => -42.89020220457195, :location => "Howrah, Tas");
User.create(:email => "maddison.jones@gmail.com", :password => "chicken99", :name => "Maddison Jones", :phone => "0487515489", :lat => 147.34071861920134, :long => -42.91011545865291, :location => "Sandy Bay, Tas");
User.create(:email => "simon.spence@gmail.com", :password => "chicken99", :name => "Simon Spence", :phone => "0444864154", :lat => 147.30401955866182, :long => -42.859056446749925, :location => "New Town, Tas");
User.create(:email => "chloe.adams@gmail.com", :password => "chicken99", :name => "Chloe Adams", :phone => "0447594589", :lat => 147.3823207930923, :long => -42.86286827991563, :location => "Rose Bay, Tas");
User.create(:email => "jack.mackenzie@gmail.com", :password => "chicken99", :name => "Jack Mackenzie", :phone => "0417225843", :lat => 147.413671002703, :long => -42.921214382257936, :location => "Tranmere, Tas");
User.create(:email => "kate.brown@gmail.com", :password => "chicken99", :name => "Kate Brown", :phone => "0419154891", :lat => 147.31121340763636, :long => -43.00699419823184, :location => "Blackmans Bay, Tas");

puts "#{ User.count } users created."
