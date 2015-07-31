# If production asks for access on facebook's app with production URL
# Otherwise access the one which has the development URL
if Rails.env.production?
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, "1863379923887723", "1cd83c110b2248541c73d9c41c6e2ffe",
             scope: 'public_profile', display: 'page', image_size: 'square'
  end
else
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, "1863794553846260", "0519f7629601357de8fed939221a466f",
             scope: 'public_profile', display: 'page', image_size: 'square'
  end
end
