Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1863379923887723", "1cd83c110b2248541c73d9c41c6e2ffe",
           scope: 'public_profile', display: 'page', image_size: 'square'
end
