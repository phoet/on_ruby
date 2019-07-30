# This is an autogenerated file for dynamic methods in Participant
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Participant::ActiveRecord_Relation < ActiveRecord::Relation
  include Participant::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Participant)
end

class Participant::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Participant::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Participant)
end

class Participant < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend Participant::ModelRelationShared
  include Participant::InstanceMethods
  Elem = type_template(fixed: Participant)
end

module Participant::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(String)) }
  def comment(); end

  sig { params(value: T.nilable(String)).void }
  def comment=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def comment?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def created_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(T.nilable(Integer)) }
  def event_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def event_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def event_id?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(T::Boolean)) }
  def maybe(); end

  sig { params(value: T.nilable(T::Boolean)).void }
  def maybe=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def maybe?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def updated_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

  sig { returns(T.nilable(Integer)) }
  def user_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def user_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def user_id?(*args); end

end

class Participant
  extend T::Sig

  sig { returns(T.nilable(::Event)) }
  def event(); end

  sig { params(value: T.nilable(::Event)).void }
  def event=(value); end

  sig { returns(T.nilable(::User)) }
  def user(); end

  sig { params(value: T.nilable(::User)).void }
  def user=(value); end

end

module Participant::ModelRelationShared
  extend T::Sig

  sig { returns(Participant::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def reselect(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def extract_associated(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def optimizer_hints(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def except(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Participant::ActiveRecord_Relation) }
  def only(*args, &block); end

end
