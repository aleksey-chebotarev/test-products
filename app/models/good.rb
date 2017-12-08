class Good < ApplicationRecord
  private

  def date_now_if_published_at_is_nil
    return false if published_at.present?

    self.published_at = Date.today
  end
end
