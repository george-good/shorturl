class UrlsController < ApplicationController
  def show
    @url = Url.find_by(short_version: params[:id])
  end

  def new
    @form = Urls::Form.new
  end

  def create
    @form = Urls::Form.from_params(params)

    Urls::Create.call(@form) do
      on(:ok) do |url|
        return redirect_to url_path(url)
      end
      on(:invalid) { return render :new }
    end
  end

  def redirect
    url = Url.find_by(short_version: params[:url])
    redirect_to url.original
  end
end
