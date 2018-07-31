class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
  end

  def sorted_item_list
    sorted_items = @vendors.map do |vendor|
      vendor.inventory.keys
    end.flatten.uniq
    sorted_items.sort_by do |item|
      item
    end
  end

  def total_inventory
    item_list = @vendors.map do |vendor|
      vendor.inventory
    end
    item_list.each do |item|
      item
    # item_list.inject(Hash.new(0)) do |hash, item|
    #   hash[item.item] += item.quantity
    end
  end

  # item_counts = matched_invoice_items.inject(Hash.new(0)) do |count, invoice_item|
  #     count[invoice_item.item_id] += invoice_item.quantity
  #     count

end
