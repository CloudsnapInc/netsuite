module NetSuite
    module Records
      class TimeEntry
        include Support::Records
        include Support::Fields
        include Support::Actions
        include Support::RecordRefs
        include Namespaces::TranEmp
  
        actions :get, :get_list, :add, :update, :upsert, :upsert_list, :delete, :search
  
        fields :hours, :is_billable, :memo, :override_rate, :paid_externally, :rate, :status, :supervisor_approval, :time_type, :tran_date
  
        record_refs :case_task_event, :klass, :customer, :custom_form, :department, :employee, :item, :location, :payroll_item, :price, :subsidiary, :temporary_local_jurisdiction, :temporary_state_jurisdiction, :workplace
  
        field :custom_field_list, CustomFieldList
  
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
  