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
#

class Defi < ActiveRecord::Base
  attr_accessible :dateLancement, :dateLimite, :defiDestineAUtilisateurUnique, :description, :lienVersLaVideo, :miseDeDepart, :modalites, :titre
  validates :titre, presence: true, length: { maximum: 80 }
  
  if @dateLancement == nil
  	@dateLancement = @created_at
  end

  if @dateLimite == nil
  	@dateLimite = @dateLancement
  end

  validates :description, presence: true
  validates :miseDeDepart, :numericality => {:greater_than_or_equal_to => 5}





end
