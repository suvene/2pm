class User < ActiveRecord::Base
  validates :cd,
    :presence => true,
    :uniqueness => { :allow_blank => true },
    :length => { :minimum => 3, :maximum => 20, :allow_blank => true },
    :format => { :with => /^[A-Z0-9-]+$/, :allow_blank => true, :message => :AtoZ0to9andHifun }
  validates :name_l,
    :presence => true,
    :length => { :maximum => 20, :allow_blank => true }
  validates :name_f,
    :presence => true,
    :length => { :maximum => 20, :allow_blank => true }
  validates :nickname,
    :presence => true,
    :length => { :maximum => 20, :allow_blank => true }
  validates :mail,
    :presence => true,
    :length => { :maximum => 50, :allow_blank => true },
    :confirmation => { :if => 'mail_changed?' }
  validates :password,
    :presence => { :on => :create },
    :length => { :minimum => 5, :maximum => 20, :allow_blank => true },
    :confirmation => { :if => 'password_changed?' }
end

    #:confirmation => { :if => Proc.new { |u| u.new_record? || u.mail_changed? } }
