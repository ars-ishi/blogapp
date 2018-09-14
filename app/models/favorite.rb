class Favorite < ActiveRecord::Base
  t.references :user, null:false
  t.references :article, null:false
  t.timestamps
end
