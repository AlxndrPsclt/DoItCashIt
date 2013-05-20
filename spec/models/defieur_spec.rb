# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  name                         :string(255)
#  email                        :string(255)
#  jetons                       :integer
#  jetonsTotalDepuisInscription :integer
#  password_digest              :string(255)
#  dateDerniereConnection       :datetime
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

require 'spec_helper'

describe Defieur do
  pending "add some examples to (or delete) #{__FILE__}"
end
