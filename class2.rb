require './product.rb'

class Cart

    @@cart_contents = []



    def self.show_contents
        return @@cart_contents
    end

    def self.add(product)
        @@cart_contents << product
        return @@cart_contents
    end

    def self.remove(product)
        @@cart_contents.delete(product)
        return @@cart_contents
    end

    def self.total_cost_before_tax
        total_before_tax = 0
        for product in @@cart_contents
            total_before_tax +=  product.base_price
        end
        return total_before_tax
    end

    def self.total_cost_after_tax
        total_before_tax = 0
        for product in @@cart_contents
            total_before_tax +=  product.calculate
        end
        return total_before_tax
    end
end
# Your program should have two separate classes: one to represent a product to be purchased and one to represent a shopping cart containing a collection of products.
#
# Each product has a name, base price, and tax rate. There should also be a method to calculate and return the product's total price based on the base price and tax rate.
#
# Each shopping cart has a collection of products. It should also have the following functionality:
#
# add an product to the cart
# remove an product from the cart
# add up the total cost of all products in the cart before tax
# add up the total cost of all products in the cart after tax
# Think about which class needs to make reference to the other one and remember to use a require statement accordingly. You don't need it in both files.
