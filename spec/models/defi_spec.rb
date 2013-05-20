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

require 'spec_helper'

describe Defi do
	before { @defi = Defi.new(titre: "Example Title", description: "wesh gros c'est la description", miseDeDepart: 6) }

	subject { @defi }
	
	it { should respond_to(:titre) }

	describe "when titre is not present" do
    	before { @defi.titre = " " }
    	it { should_not be_valid }
  	end

  	describe "when description is not present" do
    	before { @defi.description = " " }
    	it { should_not be_valid }
  	end

  	describe "when mise de depart is sufficient" do
  		it { should be_valid }
  	end

  	describe "when mise de depart is insufficient" do
  		before {@defi.miseDeDepart = 3}
  		it { should_not be_valid }
  	end





end
