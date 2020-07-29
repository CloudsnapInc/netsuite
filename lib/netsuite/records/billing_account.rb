module NetSuite
  module Records
    class BillingAccount
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::ListAcct

      actions :get, :get_list, :add, :update, :delete, :search, :upsert

      fields :created_by, :created_date, :customer_default, :id_number, :inactive, :last_bill_cycle_date, :last_bill_date, :memo, :name, :next_bill_cycle_date, :start_date

      record_refs :billing_schedule, :cash_sale_form, :klass, :currency, :customer, :custom_form, :department, :invoice_form, :location, :subsidiary

      field :custom_field_list, CustomFieldList

      attr_reader :internal_id
      attr_accessor :external_id
      attr_accessor :search_joins

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end
    end
  end
end
