class ExamplesController < ApplicationController
  def index
    @pagy, @examples = pagy(Example.all)
  end
end