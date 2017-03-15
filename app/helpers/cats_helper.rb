module CatsHelper
  def cat_photo_path(photo)
    if photo
      cl_image_path photo.path, height: 300, width: 400, crop: :fill
    else
      "http://res.cloudinary.com/das218bbz/image/upload/v1489587060/default-cat-picture_kqygl0.jpg"
    end
  end

  def cat_user_photo_path(photo)
    if photo
      cl_image_path photo.path, height: 300, width: 400, crop: :fill
    else
      "http://res.cloudinary.com/das218bbz/image/upload/v1489587059/logo_g0vbcr.png"
    end
  end
end
