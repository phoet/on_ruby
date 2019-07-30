# This is an autogenerated file for dynamic methods in Highlight
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Highlight::ActiveRecord_Relation < ActiveRecord::Relation
  include Highlight::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Highlight)
end

class Highlight::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Highlight::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Highlight)
end

class Highlight < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend Highlight::ModelRelationShared
  include Highlight::InstanceMethods
  Elem = type_template(fixed: Highlight)
end

module Highlight::InstanceMethods
  extend T::Sig

  sig { returns(DateTime) }
  def created_at(); end

  sig { params(value: DateTime).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(T.nilable(String)) }
  def description(); end

  sig { params(value: T.nilable(String)).void }
  def description=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def description?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def end_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def end_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def end_at?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(String)) }
  def label(); end

  sig { params(value: T.nilable(String)).void }
  def label=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def label?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def start_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def start_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def start_at?(*args); end

  sig { returns(DateTime) }
  def updated_at(); end

  sig { params(value: DateTime).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

  sig { returns(T.nilable(String)) }
  def url(); end

  sig { params(value: T.nilable(String)).void }
  def url=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def url?(*args); end

end

class Highlight
  extend T::Sig

end

module Highlight::ModelRelationShared
  extend T::Sig

  sig { returns(Highlight::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Highlight::ActiveRecord_Relation) }
  def active(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def reselect(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def extract_associated(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def optimizer_hints(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def except(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Highlight::ActiveRecord_Relation) }
  def only(*args, &block); end

end
