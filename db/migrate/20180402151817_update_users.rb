class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    @u = User.find_by( email: 't@wp.pl' )
    if @u != nil
      @u.update_attribute :admin, true
    end
  end
end
