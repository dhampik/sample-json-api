class Item < ActiveRecord::Base

  has_attached_file :image, styles: { thumb: ['200x150', :png] },
                    convert_options: { thumb: '-gravity center -resize 200x150^ -extent 200x150 -unsharp 0x6+0.5+0' }

  validates_attachment_content_type :image, content_type: /^image\/(png|gif|jpeg|jpg)/
end
