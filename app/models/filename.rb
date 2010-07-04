module Filename
  # Requires an instance variable @value
  def file_name
    dir=Rails.root.to_s+"/app/templates/"+self.class.name.downcase+"s/"
    file_name=name.downcase.gsub(" ","_")+".erb"
    full_path=dir+file_name
    
    matches=Dir.entries(dir).detect {|f| f==file_name}
    if matches==nil
        File.open(full_path, 'w') {|f| f.write("doc") }
    end
    
    return full_path
  end
end