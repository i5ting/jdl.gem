require "jdl/version"

module Jdl
  
  def self.parse(options)
    path = options[:path]
    file_ex = options[:file_ex]
    output_name = options[:output_name]
    template_name = options[:template_name]

    p "path = #{path}"                if(options[:debug])
    p "file_ex = #{file_ex}"          if(options[:debug])
    p "output_name = #{output_name}"  if(options[:debug])
    
    File.delete(options[:output_name]) if File.exist?(options[:output_name])
    
    self.getfiles(path,file_ex,output_name,template_name);
  
  end
  
  def self.getfiles(path,fname,output_name,template_name)
    re = []
    allre = []
    Dir.foreach(path) do |f|
    	allre << f
    end
    allre.each do |f|
    	fullfilename = path + "/" + f
    	if f == "." or f == ".." 
         
      elsif File.directory?(fullfilename)
      	resub = []
    		resub = getfiles(fullfilename,fname,output_name,template_name)

    		if resub.length > 0
    			ref = {}
    			ref[f] = resub
    			re << ref
    		end
      
      elsif File.exist?(fullfilename) and (f =~ /\.#{fname}$/) # only rb file
        self.print_arr(fullfilename,output_name,template_name)
        # p  ff
      	re << f
        # p fullfilename
      end
    end
    
    return re
  end

  def self.print_arr(content,filename='jdl.js',template_name)
    f=open(filename,"a") 
    
    if(template_name)
      #如果有模板名称，则读取模板内容，替换内部的item
      t_content = ''
      IO.foreach(template_name) {|x|
        t_content << x
      }
      
      # p t_content
      f.puts(t_content.gsub(/##item##/, content)) 
    else
      f.puts("<script src='#{content}'></script>") 
    end
    
    f.close
  end
end
