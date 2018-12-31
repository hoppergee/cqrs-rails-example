module Ordering
end

require_dependency 'ordering/order'
require_dependency 'ordering/order_line'

require_dependency 'ordering/submit_order'
require_dependency 'ordering/on_submit_order'
require_dependency 'ordering/order_submitted'

require_dependency 'ordering/add_item_to_basket'
require_dependency 'ordering/on_add_item_to_basket'
require_dependency 'ordering/item_added_to_basket'