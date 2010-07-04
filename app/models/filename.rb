module Filename
  # Requires an instance variable @value
  def file_name
    return name.downcase.gsub(" ","_")
  end
end
