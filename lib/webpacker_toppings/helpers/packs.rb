module WebpackerToppings
  module Helpers
    module Packs
      # Retrieve javascript packs declared in your templates
      # Example : <%= javascript_packs_with_chunks_tag *javascript_packs_list %>
      def javascript_packs_list
        return unless content_for?(:javascript_packs_list)

        Array(content_for(:javascript_packs_list).split(';')).reject(&:empty?)
      end

      # Retrieve stylesheet packs declared in your templates
      # Example : <%= stylesheet_packs_with_chunks_tag *stylesheet_packs_list %>
      def stylesheet_packs_list
        return unless content_for?(:stylesheet_packs_list)

        Array(content_for(:stylesheet_packs_list).split(';')).reject(&:empty?)
      end

      # Declare a javascript pack (or many) you want to use in a template
      # Example : <%= use_javascript_pack(:foo, :bar) %>
      def use_javascript_pack(*packs)
        content_for(:javascript_packs_list) { "#{packs.join(';')};" }
      end

      # Declare a stylesheet pack (or many) you want to use in a template
      # Example : <%= use_stylesheet_pack(:baz) %>
      def use_stylesheet_pack(*packs)
        content_for(:stylesheet_packs_list) { "#{packs.join(';')};" }
      end
    end
  end
end
