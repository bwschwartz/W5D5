# == Schema Information
#
# Table name: castings
#
#  id         :bigint           not null, primary key
#  ord        :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :bigint           not null
#  movie_id   :bigint           not null
#
# Indexes
#
#  index_castings_on_actor_id_and_movie_id  (actor_id,movie_id) UNIQUE
#  index_castings_on_movie_id               (movie_id)
#
# Foreign Keys
#
#  fk_rails_...  (actor_id => actors.id)
#  fk_rails_...  (movie_id => movies.id)
#
class Casting < ApplicationRecord
  belongs_to :actor
  belongs_to :movie
end
