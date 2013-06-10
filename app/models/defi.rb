# == Schema Information
#
# Table name: defis
#
#  id                            :integer          not null, primary key
#  titre                         :string(255)
#  description                   :string(255)
#  dateLimite                    :datetime
#  dateLancement                 :datetime
#  defiDestineAUtilisateurUnique :integer
#  lienVersLaVideo               :string(255)
#  modalites                     :string(255)
#  miseDeDepart                  :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  createur                      :integer
#

class Defi < ActiveRecord::Base
  attr_accessible :dateLancement, :createur, :dateLimite, :defiDestineAUtilisateurUnique, :description, :lienVersLaVideo, :miseDeDepart, :modalites, :titre
  after_initialize :init
  has_many :microposts, dependent: :destroy
  def init
    if self.dateLancement == nil
      self.dateLimite||= Time.now + 5.months
    else
      self.dateLimite ||= self.dateLancement + 5.months
    end  
  self.dateLancement ||= Time.now

  end 
  validates :titre, presence: true, length: { maximum: 80 }
  validates :description, presence: true
  validates :miseDeDepart, :numericality => {:greater_than_or_equal_to => 5}
  validates :modalites, presence: true


end
