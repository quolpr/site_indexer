class ApplicationController < ActionController::API
  def response_with_create(model)
    if model.errors.present?
      render json: model,
             status: 422,
             serializer: ActiveModel::Serializer::ErrorSerializer
    else
      render json: model,
             status: 201
    end
  end
end
