require 'generators/web_app_theme'

class ThemeGenerator < WebAppTheme::Generators::Base
  
  
  class_option :type, :default => :administration
  argument :layout_name, :required => false
  class_option :theme, :default => :default
  class_option :app_name, :default => 'Web App'
  class_option :no_layout, :type => :boolean, :default => false

  def create_layouts_dir
    puts options
    puts "layout_name=#{layout_name}"
    empty_directory "app/views/layouts"
  end
  
  def create_images_dir
    empty_directory "public/images/web-app-theme"
  end
  
  def copy_images
    %w(cross key tick application_edit).each do |icon|
      copy_file("../../../../images/icons/#{icon}.png", "public/images/web-app-theme/#{icon}.png")
    end
  end
  
  def create_theme_dir
    empty_directory "public/stylesheets/themes/#{options[:theme]}/"
  end
  
  def copy_layout
    @layout_name = layout_name.nil? ? "application" : layout_name
    @name = options[:type].to_s == "sign" ? "sign" : (layout_name.nil? ? "application" : layout_name)
    template "view_layout_#{options[:type]}.html.erb", File.join('app/views/layouts', "#{@name}.html.erb") unless options[:no_layout]
  end
  
  def copy_base_stylesheet
    template("../../../../stylesheets/base.css",  File.join("public/stylesheets", "web_app_theme.css"))
  end
  
  def copy_theme_override
    copy_file("web_app_theme_override.css",  File.join("public/stylesheets", "web_app_theme_override.css"))
  end
  
  def copy_theme_stylesheet
    copy_file("../../../../stylesheets/themes/#{options[:theme]}/style.css",  File.join("public/stylesheets/themes/#{options[:theme]}", "style.css"))
  end
  
  def banner
    "Usage: #{$0} theme [layout_name] [options]"
  end
  
end
