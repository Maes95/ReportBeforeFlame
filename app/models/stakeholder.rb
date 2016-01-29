class Stakeholder < ActiveRecord::Base
  has_many :reports

  validates :name, presence: true
  validates :lastname, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
