class Swarm < ApplicationRecord
    belongs_to :collector, :class_name => "User", :optional => true
    belongs_to :reporter, :class_name => "User"
  end
