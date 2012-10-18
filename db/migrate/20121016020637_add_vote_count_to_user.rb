class AddVoteCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :vote_count, :integer
  end
end
