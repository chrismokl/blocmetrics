class AddClicksToApplication < ActiveRecord::Migration
  def change
    add_belongs_to :clicks, :application
  end
end
