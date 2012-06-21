module FeatherCms
  class Page < ActiveRecord::Base
    attr_accessible :name, :status, :layout, :content, :template_type
    validates :name, :presence => true

    before_validation :parameterize_name

    def parameterize_name
      self.name = name.parameterize
    end

    # overridden ID param
    def to_param
      name
    end

    def template_name(field_name)
      "#{self.class.name.downcase}_#{field_name}_#{self.id}.#{Config.template_extenstion}"
    end

    def _template_path(field)
      File.join([Config.template_store_path, template_name(file)])
    end

    def _cms_content(field)
      return nil if self.id.nil?
      TemplateCache.cache_file(template_name(field))
    end

  end
end
