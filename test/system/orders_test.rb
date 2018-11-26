#---
# Excerpted from "Agile Web Development with Rails 5.1",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails51 for more book information.
#---

# require "application_system_test_case"

# class OrdersTest < ApplicationSystemTestCase
#   setup do
#     @order = orders(:one)
#   end

#   test "visiting the index" do
#     visit orders_url
#     assert_selector "h1", text: "Orders"
#   end

#   test "creating a Order" do
#     visit orders_url
#     click_on "New Order"

#     fill_in "Address", with: @order.address
#     fill_in "Email", with: @order.email
#     fill_in "Name", with: @order.name
#     fill_in "Pay Type", with: @order.pay_type
#     click_on "Create Order"

#     assert_text "Order was successfully created"
#     click_on "Back"
#   end

#   test "updating a Order" do
#     visit orders_url
#     click_on "Edit", match: :first

#     fill_in "Address", with: @order.address
#     fill_in "Email", with: @order.email
#     fill_in "Name", with: @order.name
#     fill_in "Pay Type", with: @order.pay_type
#     click_on "Update Order"

#     assert_text "Order was successfully updated"
#     click_on "Back"
#   end

#   test "destroying a Order" do
#     visit orders_url
#     page.accept_confirm do
#       click_on "Destroy", match: :first
#     end

#     assert_text "Order was successfully destroyed"
#   end

require "application_system_test_case"

 class OrdersTest < ApplicationSystemTestCase

  test "check routing number" do
    visit store_index_url

    first('.catalog li').click_on 'Add to Cart'

    click_on 'Checkout'

    fill_in 'order_name', with: 'Dave Thomas'
    fill_in 'order_address', with: '123 Main Street'
    fill_in 'order_email', with: 'dave@example.com'

    assert_no_selector "#order_routing_number"

    select 'Check', from: 'pay_type'

    assert_selector "#order_routing_number"
  end 
end
