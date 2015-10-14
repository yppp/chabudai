require "set"
module Chabudai
  #
  # = データベースのテーブルと関連しないモデルの基底クラスです
  #
  # データベースのテーブルと関連させずにバリデーションや I18n などの機能を利用する
  # ためのモデルの基底クラスです。複雑なフォームの管理に使用することを想定していま
  # す。
  #
  class Tableless
    extend ActiveModel::Naming
    include ActiveModel::Validations
    include ActiveModel::Conversion

    def initialize(attrs={})
      attrs.each do |name, value|
        next unless self.class.attribute_names.include?(name.to_sym)
        send("#{name}=", value)
      end
    end

    def persisted?
      false
    end

    class << self
      def attribute(*attrs)
        attrs.each do |attr|
          attr_accessor attr
          defined_attributes.add(attr.to_sym)
        end

        self
      end

      def attribute_names
        defined_attributes.to_a
      end

      private

      def defined_attributes
        @defined_attributes ||= Set.new
      end
    end
  end

end
