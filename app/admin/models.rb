ActiveAdmin.register Model do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :path, :library_id, :preview_file_id, :creator_id, :thingiverse_id, :cgtrader_path, :cults3d_path, :mmf_slug, :tag_list
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :path, :library_id, :preview_file_id, :creator_id, :thingiverse_id, :cgtrader_path, :cults3d_path, :mmf_slug, :tag_list]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end