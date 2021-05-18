class User < ApplicationRecord

  SKILL_LIST = ["boxe", "muay thai", "mma", "la bagarre", "ju-jitsu", "karaté", "fart", "no skills, I'm a damn shit"]
  has_many :fights
  has_many :locations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :skills, presence: true, inclusion: { in: SKILL_LIST }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
