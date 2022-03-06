# frozen_string_literal: true

module ApplicationHelper
  def page_title_tag
    content_tag('title') do
      return content_for :page_title if content_for?(:page_title)

      "#{I18n.t(:site_name)} -
        #{I18n.t("#{controller_path.tr('/', '.')}.#{action_name}.title", default: nil)}"
    end
  end
end
