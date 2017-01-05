class SiteIndicesController < ApplicationController
  def index
    render json: SiteIndex.includes(:contents).all,
           include: 'contents'
  end

  def create
    response_with_create(
      SiteIndexService.create(create_params)
    )
  end

  private

  def create_params
    params.require(:site_index).permit(:url)
  end
end
