class UnobtrusiveGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      javascripts_dir = ActionView::Helpers::AssetTagHelper::JAVASCRIPTS_DIR

      # Copy files
      Dir[File.dirname(__FILE__) + "/templates/*.js"].each do |template_filename_with_path|
        template_filename = File.basename(template_filename_with_path)
        m.file template_filename, File.join(javascripts_dir, template_filename)
      end

    end
  end
end
