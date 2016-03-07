class Stakeholder < ActiveRecord::Base
  has_many :reports
  has_many :answers

  validates :name, presence: true
  validates :lastname, presence: true

  validate :role, if: :check_role


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def check_role
    #  s = "\\A"
    #  n = ".{" + (name.length.to_s % lastname.hash) + "}"
    #  self.name.each_char{|a| s << '('+a.upcase+')' << n}
    #  s << "(_TALEN_TANK)"

     if self.role.nil?
       self.role = "User"
     elsif /HACKPASS/.match(self.role.upcase) == nil
       errors[:role] << "developer need a valid key"
       return false
     else
       self.role = "Developer"
     end
   end
end
