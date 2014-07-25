class Settings < RailsSettings::CachedSettings
  def to_s
    I18n.t("settings.#{var}")
  end
end
