require 'elasticsearch/model'
class Content < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  if !Content.__elasticsearch__.index_exists?

  	Content.__elasticsearch__.create_index! force: true
  end

end
Content.import