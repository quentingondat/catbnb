module CatsHelper
  def cat_photo_path(photo)
    if photo
      cl_image_path photo.path, height: 300, width: 400, crop: :fill
    else
      image_path "default-cat-picture.jpeg"
    end
  end

  def cat_user_photo_path(photo)
    if photo
      cl_image_path photo.path, height: 300, width: 400, crop: :fill
    else
      image_path "default-user-picture.jpeg"
    end
  end
end
