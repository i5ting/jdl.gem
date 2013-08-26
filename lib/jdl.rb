require "jdl/version"

module Jdl
  # Your code goes here...
  # create runtest.rb for rails.
  # e.g. :(the name of this file is createruntest.rb)
  # #>ruby createruntest.rb ./test > runtest.sh
  # #>chmod 777 runtest.sh
  #
  def self.getfiles(path,fname,output_name)

    re = []
    allre = []
    Dir.foreach(path) do |f|
    	allre << f
    end
    allre.each do |f|
    	fullfilename = path + "/" + f
      
      # p fullfilename
      
    	if f == "." or f == ".." 
         
      elsif File.directory?(fullfilename)
      	resub = []
    		resub = getfiles(fullfilename,fname,output_name)
		
    		if resub.length > 0
    			ref = {}
    			ref[f] = resub
    			re << ref
    		end
      
      elsif File.exist?(fullfilename) and (f =~ /\.#{fname}$/) # only rb file
        self.print_arr(fullfilename,output_name)
        # p  ff
      	re << f
        # p fullfilename
      end
    end
    
    # p extname
    return re
  end
 

  def self.print_arr(content,filename='jdl.js')
    f=open(filename,"a") 
    f.puts("<script src='#{content}'></script>") 
    f.close
  end
end
