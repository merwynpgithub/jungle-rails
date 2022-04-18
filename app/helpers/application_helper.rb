module ApplicationHelper

  def active_sale?
    Sale.where({starts_on: '2022-04-01..2022-05-01' }).any?
  end

end
