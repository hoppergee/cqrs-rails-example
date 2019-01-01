require 'arkency/command_bus'

Rails.configuration.to_prepare do
  Rails.configuration.event_store = RailsEventStore::Client.new
  Rails.configuration.command_bus = Arkency::CommandBus.new
  
  Rails.configuration.event_store.tap do |store|
    store.subscribe(Orders::OnItemAddedToBasket, to: [Ordering::ItemAddedToBasket])
    store.subscribe(Orders::OnOrderSubmitted, to: [Ordering::OrderSubmitted])
    store.subscribe(Orders::OnItemRemovedFromBasket, to [Ordering::ItemRemovedFromBasket])
  end

  Rails.configuration.command_bus.tap do |bus|
    bus.register(Ordering::AddItemToBasket, Ordering::OnAddItemToBasket.new)
    bus.register(Ordering::RemoveItemFromBasket, Ordering::OnRemoveItemFromBasket.new)
    bus.register(Ordering::SubmitOrder, Ordering::OnSubmitOrder.new(number_generator: Rails.configuration.number_generator))
  end
end