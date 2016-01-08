require 'action_view/helpers'

module ActionView
  module Helpers
    # = Action View Telephone Link Helper
    module TelToHelper
      # Creates a telephone link tag of the given +number+ and +name+. If +nil+
      # is passed as the +name+ the value of the link itself will become the
      # +number+. +options+ and +html_options+ will be same as +link_to.
      def tel_to(number, name = nil, link_to_options = {}, number_to_phone_options = {area_code: true})
        return unless number.present?
        formatted_number = number_to_phone(number, number_to_phone_options)
        link_to(h(name || formatted_number), "tel:#{h(number)}", link_to_options)
      end
    end
  end
end
