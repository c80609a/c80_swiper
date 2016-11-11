module C80Swiper

  # грузит картинку фрейма
  class SframeUploader < BaseFileUploader

    process :resize_to_limit => [1024,768]

    version :thumb_big_one do
      Proc.new {
        p = C80Swiper::Swprop.first
        process :resize_to_fill => [p.big_one_width, p.big_one_height]
      }
    end

    version :thumb_preview do
      Proc.new {
        p = C80Swiper::Swprop.first
        process :resize_to_fill => [p.preview_width, p.preview_height]
      }
    end

    version :thumb_sm do
      Proc.new {
        p = C80Swiper::Swprop.first
        process :resize_to_fill => [p.thumb_sm_width, p.thumb_sm_height]
      }
    end

    version :thumb_md do
      Proc.new {
        p = C80Swiper::Swprop.first
        process :resize_to_fill => [p.thumb_md_width, p.thumb_md_height]
      }
    end

    version :thumb_lg do
      Proc.new {
        p = C80Swiper::Swprop.first
        process :resize_to_fill => [p.thumb_lg_width, p.thumb_lg_height]
      }
    end

    def store_dir
      'uploads/oimages'
    end

  end

end