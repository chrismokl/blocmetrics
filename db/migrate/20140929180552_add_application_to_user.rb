class AddApplicationToUser < ActiveRecord::Migration
  def change
    add_belongs_to :users, :application
  end
end
