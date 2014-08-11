class ModifySpreeStoreCreditPaymentMethodToBeBackEndOnly < ActiveRecord::Migration
  def up
    payment_method = Spree::PaymentMethod.find_by(type: 'Spree::PaymentMethod::StoreCredit')
    return unless payment_method
    payment_method.display_on = 'back_end'
    payment_method.save!
  end

  def down
    payment_method = Spree::PaymentMethod.find_by(type: 'Spree::PaymentMethod::StoreCredit')
    return unless payment_method
    payment_method.display_on = nil
    payment_method.save!
  end
end
