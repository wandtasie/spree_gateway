module Spree
  class BillingIntegrations::Directbanking < BillingIntegration
    preference :project_id, :string
    preference :project_password, :string
    preference :user_id, :string

    attr_accessible :preferred_project_id, :preferred_project_password, :preferred_user_id, :preferred_server, :preferred_test_mode

    def provider_class
      ActiveMerchant::Billing::Integrations::Directbanking
    end

    def source_required?
      false
    end
  end
end
