namespace :settings do
  desc 'Generate settings'
  task(generate: :environment) do
    settings = {
      'title' => 'Photo Book',
      'logo' => 'Photographer',
      'twitter' => nil,
      'facebook' => nil,
      'linkedin' => nil,
      'pinterest' => nil,
      'email' => nil
    }

    settings.each do |var, value|
      unless Settings.find_by(var: var)
        Settings.create!(var: var, value: value)
      end
    end
  end
end
