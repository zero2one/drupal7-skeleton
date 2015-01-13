core = 7.x
api = 2

; Modules
projects[admin_menu][subdir] = "contrib"

projects[admin_views][subdir] = "contrib"

projects[ckeditor][subdir] = "contrib"

projects[context][subdir] = "contrib"

projects[ctools][subdir] = "contrib"

projects[date][subdir] = "contrib"

projects[diff][subdir] = "contrib"

projects[entity][subdir] = "contrib"

projects[entityreference][subdir] = "contrib"

projects[features][subdir] = "contrib"

projects[module_filter][subdir] = "contrib"

projects[reldate][subdir] = "contrib"

projects[strongarm][subdir] = "contrib"

projects[token][subdir] = "contrib"

projects[views][subdir] = "contrib"

projects[views_bulk_operations][subdir] = "contrib"

projects[transliteration][subdir] = "contrib"

projects[pathauto][subdir] = "contrib"

projects[globalredirect][subdir] = "contrib"

projects[chosen][subdir] = "contrib"

; Development modules
; Modules
projects[devel][subdir] = "development"
projects[coder][subdir] = "development"
projects[eazylaunch][subdir] = "development"


; Libraries
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.4/ckeditor_4.3.4_full.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[chosen][download][type]= "get"
libraries[chosen][download][url] = "https://github.com/harvesthq/chosen/releases/download/v1.1.0/chosen_v1.1.0.zip"
libraries[chosen][directory_name] = "chosen"
libraries[chosen][destination] = "libraries"
