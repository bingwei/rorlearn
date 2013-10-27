# VALID_EMAIL_REGEX = /\A[\w+\-\_\.]+@[a-z\d\-\_\.]+\.[a-z]+\Z/i
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\Z/i

addresses = %w{user@foo.COM user_at-a_f@..org.b ex.user@foo.jp foo@barb.com fo+bo@bar.com}
# addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
# addresses = %w{user@foo,com user_at_f.org ex.user@foo. foo@bar_b.com foo@bar+baz.com}
addresses.each do |addr|
  puts addr unless addr =~ VALID_EMAIL_REGEX
end
# addresses.each do |addr|
  # puts addr if addr =~ VALID_EMAIL_REGEX
# end