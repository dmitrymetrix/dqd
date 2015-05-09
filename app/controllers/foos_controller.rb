class ApplicationController
  def index
    styx_initialize_with :foo => 'bar', :and => {:habrahabr => 'rockz!'}
  end
end