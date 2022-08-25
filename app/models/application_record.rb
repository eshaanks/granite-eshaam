# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include ActionView::Helpers::TranslationHelper
  self.abstract_class = true

  def errors_to_sentence
    errors.full_messages.to_sentence
  end

  private

    def respond_with_error(message, status = :unprocessable_entity, context = {})
      is_exception = message.kind_of?(StandardError)
      error_message = is_exception ? message.record&.errors_to_sentence : message
      render status: status, json: { error: error_message }.merge(context)
    end
end
