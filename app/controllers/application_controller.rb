class ApplicationController < ActionController::Base

  def hello
    render html: "oieeee, queijos!"
  end
end
