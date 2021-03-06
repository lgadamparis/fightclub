class User < ApplicationRecord
  SKILLS = ["boxing", "muay thai", "courgette", "mma", "la bagarre", "ju-jitsu", "karate", "fart",
            "no skills, i'm a damn shit"]
  enum skills: SKILLS
  has_one_attached :photo
  has_many :fights
  has_many :locations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :skills, presence: true
  validates :bio, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
