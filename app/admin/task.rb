ActiveAdmin.register Task do
  index do
    column :name
    default_actions
  end

#  filter :email

  form do |f|
    f.inputs "Task Details" do
      f.input :name
      f.input :project_id, :label => 'Project', :prompt => 'Select Project',:as => :select, :collection => Project.all.map{|u| [u.name, u.id]}
    end
    f.actions
  end

end



