ActiveAdmin.register Project do
  index do
    column :name
    column :user
    default_actions
  end

  filter :name

  form do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :user_id, :label => 'User', :prompt => 'Select User',:as => :select, :collection => User.all.map{|u| [u.email, u.id]}
    end
    f.actions
  end
end
