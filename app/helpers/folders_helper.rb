module FoldersHelper
  def nested_folders(folders)
    folders.map do |folder, sub_folders|
      render(folder) + content_tag(:div, nested_folders(sub_folders), :class => "nested_folders")
    end.join.html_safe
  end
end
