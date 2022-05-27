require "fileutils"

Bundler::Plugin.add_hook('after-install') do |arg|
  gems_dir = Bundler.app_config_path.join("gems")
  gem_path = arg.spec.full_gem_path
  source   = arg.spec.source

  if !source.respond_to?(:path) || source.path.to_s != "."
    FileUtils.mkdir_p(gems_dir)

    link_name = "#{gems_dir}/#{arg.name}"
    File.unlink(link_name) if File.exists?(link_name)
    File.symlink(gem_path, link_name)
  end
end
