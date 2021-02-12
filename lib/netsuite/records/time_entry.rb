module NetSuite
  module Records
    class TimeEntry
      include Support::Records
      include Support::Fields
      include Support::Actions
      include Support::RecordRefs
      include Namespaces::TranEmp

      actions :get, :get_list, :add, :update, :upsert, :upsert_list, :delete, :search

      fields :created_date, :last_modified_date, :is_billable, :memo, :override_rate, :paid_externally, :rate, :time_type

      record_refs :approval_status, :billing_class, :case_task_event, :klass, :customer, :department, :item, :location, :payroll_item, :price, :subsidiary

      field :custom_field_list, CustomFieldList
      field :hours, Duration

      attr_reader :internal_id
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end

    end
  end
end