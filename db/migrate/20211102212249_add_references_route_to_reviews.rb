class AddReferencesRouteToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :route, foreign_key: true
    add_reference :reviews, :user, foreign_key: true

    add_reference :places, :route, foreign_key: true

  end
end
