Bundler::Plugin.add_hook('after-install') do |arg|
  gems_dir = Bundler.app_config_path.join("gems")
  gem_path = arg.spec.full_gem_path
  source   = arg.spec.source

  if !source.respond_to?(:path) || source.path.to_s != "."
    FileUtils.mkdir_p(gems_dir)
    FileUtils.ln_sf(gem_path, "#{gems_dir}/#{arg.name}")
  end
end
