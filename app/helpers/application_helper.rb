# frozen_string_literal: true

module ApplicationHelper
  def page_title_tag
    content_tag('title') do
      return content_for :page_title if content_for?(:page_title)

      "#{I18n.t(:site_name)} -
        #{I18n.t("#{controller_path.tr('/', '.')}.#{action_name}.title", default: nil)}"
    end
  end

  def developer_profile_link
    link_to("by #{I18n.t('developer_profile.name')}",
            I18n.t('developer_profile.profile_url'),
            class: 'btn btn-outline-dark btn-sm',
            title: I18n.t('developer_profile.btn_title'),
            target: :_blank,
            rel: :noopener)
  end

  def how_it_works_button
    link_to('#', class: 'btn btn-secondary',
                 title: I18n.t(:instructions, scope: 'how_it_works.button'),
                 data: {
                   'bs-toggle': 'tooltip',
                   'bs-placement': 'top'
                 }) do
      I18n.t(:title, scope: 'how_it_works.button')
    end
  end
end
