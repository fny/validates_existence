require "rubygems"

gem "activerecord", ">= 3.1.0"

require "sqlite3"
require "test/unit"
require "active_record"
require "active_record/base"

ActiveRecord::Migration.verbose = false
ActiveRecord::Base.establish_connection(
        "adapter" =>  "sqlite3",
        "database" => ":memory:"
)

require File.join(File.dirname(__FILE__), "..", "lib", "validates_existence")

autoload :Name,                 File.join(File.dirname(__FILE__), "models", "name.rb")
autoload :User,                 File.join(File.dirname(__FILE__), "models", "user.rb")
autoload :UserWithOldSyntax,    File.join(File.dirname(__FILE__), "models", "user_with_old_syntax.rb")
autoload :UserWithAllowNil,     File.join(File.dirname(__FILE__), "models", "user_with_allow_nil.rb")
autoload :UserWithAllowNew,     File.join(File.dirname(__FILE__), "models", "user_with_allow_new.rb")
autoload :UserWithPoly,         File.join(File.dirname(__FILE__), "models", "user_with_poly.rb")
autoload :UserWithPolyAllowNil, File.join(File.dirname(__FILE__), "models", "user_with_poly_allow_nil.rb")
autoload :UserWithHasMany,      File.join(File.dirname(__FILE__), "models", "user_with_has_many.rb")
autoload :UserWithBoth,         File.join(File.dirname(__FILE__), "models", "user_with_both.rb")
autoload :UserWithFk,           File.join(File.dirname(__FILE__), "models", "user_with_fk.rb")
