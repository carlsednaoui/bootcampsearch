Bootcampsearch::Application.routes.draw do
  # enables use of /coding-bootcamp instead of /coding_bootcamp
  resources "coding-bootcamp", :controller => :coding_bootcamps, :as => :coding_bootcamps
end
