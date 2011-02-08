module LegislatorsHelper
  def party_class_for(legislator)
    return "party_#{legislator.party}" if ["D","R"].include? legislator.party
    "party_I"
  end
end
