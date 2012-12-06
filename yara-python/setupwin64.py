from distutils.core import setup, Extension
             
setup(  name = "yara-python",
        version = "1.7",
        author = "Victor M. Alvarez",
        author_email = "vmalvarez@virustotal.com",
        ext_modules = [ Extension(
                                    name='yara', 
                                    sources=['yara-python.c'],
                                    include_dirs=['../windows/include', '../libyara'],
                                    extra_objects=['../windows/yara/x64/Release/libyara64.lib','../windows/lib/pcre64.lib']
                                    )])
     
 
                                  
