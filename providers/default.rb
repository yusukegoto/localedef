def whyrun_supported?
  true
end

action :add do
  locale = @new_resource.name

  unless @current_resource.has_locale
    lang_split, charmap_split = locale.split '.'

    lang    = lang_split    unless @new_resource.lang
    charmap = @new_resource.charmap || charmap_split

    execute "localedef -f #{ charmap } -i #{ lang } #{ locale }" do
      action :run
    end
    new_resource.updated_by_last_action true
  end
end

def load_current_resource
  @new_resource.locale ||= @new_resource.name
  locale = @new_resource.locale

  @current_resource = Chef::Resource::Localedef.new(locale).tap do |cr|
    locales = Mixlib::ShellOut.new('locale -a')
    locales.run_command

    is_locale_nil = (locales.stdout =~ Regexp.new(locale)).nil?
    cr.has_locale = !is_locale_nil
  end
end
