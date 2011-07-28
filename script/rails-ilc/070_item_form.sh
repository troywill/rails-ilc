FORM_PARTIAL="../../../app/views/items/_form.html.erb"
cat >> ${FORM_PARTIAL} <<HERE

<p>
  <label for="item_name">Item</label><%= text_field 'item', 'name'  %>
  <label for="item_note">Note</label><%= text_field 'item', 'note'  %>
</p>

<p>
  <label for="item_location_id">Location</label>
  <%= select( "item", "location_id", Location.find(:all, :order => "name" ).collect { |l| [l.name, l.id] } ) %>
</p>

<p>
  <% for category in Category.find(:all, :order => "name" ) %>
    <%= check_box_tag "item[category_ids][]", category.id, @item.categories.include?(category) %><%= category.name %><br/>
  <% end %>
</p>
HERE
