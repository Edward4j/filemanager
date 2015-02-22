module FoldersHelper
  def nested_folders(folders)
    folders.map do |folder, sub_folders|
      render(folder) + content_tag(:div, nested_folders(sub_folders), :class => "nested_folders")
    end.join.html_safe
  end

   def nested_folders_tree(folders)
    folders.map do |folder, sub_folders|
      render("folder_item", folder: folder) + content_tag(:div, nested_folders_tree(sub_folders), :class => "nested_folders")
    end.join.html_safe
  end

end

