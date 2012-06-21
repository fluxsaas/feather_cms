module FeatherCms
  module ApplicationHelper
    def codemirror_include_tag
      javascript_include_tag('feather_cms/codemirror/codemirror', 'feather_cms/codemirror/modes/htmlmixed', 'feather_cms/codemirror/modes/javascript',
                             'feather_cms/codemirror/modes/xml', 'feather_cms/codemirror/modes/css', 'feather_cms/codemirror/feather_cms') + 
                             stylesheet_link_tag('feather_cms/codemirror/codemirror')
    end

    def template(object_name, method, options = {})
      options[:class] = "#{options[:class]} codemirror_feather_cms"
      text_area(object_name, method, options = {})
    end

    def template_tag(name, content = nil, options = {})
      options[:class] = "#{options[:class]} codemirror_feather_cms"
      text_area_tag(name, content = nil, options = {})
    end
  end
end
