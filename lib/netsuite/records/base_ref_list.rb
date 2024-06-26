# TODO needs spec

module NetSuite
  module Records
    class BaseRefList < Support::Sublist
      include Support::Actions
      include Namespaces::PlatformCore

      actions :get_select_value

      fields :total_pages, :total_records, :status

      sublist :base_ref, RecordRef

      alias :base_refs :base_ref

    end
  end
end
