module Spree
  class BillingIntegrations::Directbanking < BillingIntegration
    preference :project_id, :string
    preference :project_password, :string
    preference :user_id, :string

    attr_accessible :preferred_project_id, :preferred_password, :preferred_user_id

    def provider_class
      ActiveMerchant::Billing::Integrations::Directbanking
    end

    def source_required?
      false
    end
  end
end
