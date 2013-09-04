class UtilityController < ApplicationController
  # TODO
  # The data specificiation needs to get fleshed
  # out a bit more before the web interface
  # is ready to talk about this  

  def show
    # display method details
  end

  def run
    # show method evaluated author-supplied assertions
  end

  def take
    # duplicates author-supplied version
    # creates a version attached to the user profile
    # version is attached to the utility parent
  end

  def edit
    # user can change 
    # - body
    # - description
    # - test arguments
    # - test assertions
    # - name
    # - arguments defaults
  end

  def assert
    # run with viewer-supplied arguments
  end

  def submit
    # update, post-edit
  end

  def versions
    # list variants on the utility name
  end

end
