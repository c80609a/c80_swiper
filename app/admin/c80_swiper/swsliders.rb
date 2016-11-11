ActiveAdmin.register C80Swiper::Swslider, as: 'Swslider' do

  config.per_page = 100

  menu :label => 'Слайдеры', # TODO_MY:: название пункта меню перенесести в параметры в базу
       priority: 4,
       parent: 'Swipers' # TODO_MY:: название пункта меню перенесести в параметры в базу

  permit_params :title,
                :sframes_attributes => [
                    :id,
                    :_destroy,
                    :title,
                    :link_url,
                    :image,
                    :swslider_id,
                    :ord,
                    :enabled,
                    :fcaptions_attributes => [
                        :id,
                        :_destroy,
                        :sframe_id,
                        :ord,
                        :value
                    ]
                ]

  batch_action :destroy, false

  config.sort_order = 'id_desc'

  # before_filter :skip_sidebar!, :only => :index

  index do
    selectable_column
    column :title
    column :sframes do |csample|
      s = ''
      # link_to image_tag(csample.csphoto.thumb_md, style: 'width:150px;'), csample.csphoto.url, target: '_blank'
      # s = csample.sframes.def_order
      #         .map{ |sframe| "<li>#{sframe.offer.title} (#{sframe.offer.price})</li>"}
      #         .join('')
      # s += "<li>Итого: #{ csample.summ_price }</li>"
      "<ul>#{s}</ul>".html_safe
    end
    actions
  end

  form(:html => {:multipart => true}) do |f|

    f.inputs 'Свойства' do

      f.input :title

      f.inputs 'Фреймы' do
        f.has_many :sframes, allow_destroy: true do |ff|
          ff.input :title
          ff.input :link_url
          ff.input :enabled,
                   :input_html => {
                       :checked => ff.object.new_record? ? 'checked':nil
                   }
          ff.input :image,
                  :as => :file,
                  :hint => image_tag(ff.object.image.thumb_md)
          ff.has_many :fcaptions, allow_destroy: true do |fff|
            fff.input :value
          end
        end
      end

    end

    f.actions
  end

end