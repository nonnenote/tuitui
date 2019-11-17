module TuisHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_tuis_path
    elsif action_name == 'edit'
      tui_path
    end
  end
end
