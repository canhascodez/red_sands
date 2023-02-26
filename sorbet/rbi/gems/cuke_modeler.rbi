# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/cuke_modeler/all/cuke_modeler.rbi
#
# cuke_modeler-3.19.0

module CukeModeler
end
class CukeModeler::GherkinBaseAdapter
  def save_original_data(adapted_ast, raw_ast); end
end
class CukeModeler::Gherkin20Adapter < CukeModeler::GherkinBaseAdapter
  def adapt(ast); end
  def adapt_background(background_ast); end
  def adapt_child_elements(element_ast); end
  def adapt_comment(comment_ast); end
  def adapt_comments(file_ast); end
  def adapt_doc_string(doc_string_ast); end
  def adapt_example(example_ast); end
  def adapt_examples(element_ast); end
  def adapt_feature(feature_ast); end
  def adapt_outline(test_ast); end
  def adapt_rule(rule_ast); end
  def adapt_scenario(test_ast); end
  def adapt_step(step_ast); end
  def adapt_step_table(step_table_ast); end
  def adapt_steps(element_ast); end
  def adapt_table_cell(cell_ast); end
  def adapt_table_row(table_row_ast); end
  def adapt_tag(tag_ast); end
  def adapt_tags(element_ast); end
  def adapt_test(test_ast); end
  def clear_child_elements(ast, child_paths); end
  def test_has_examples?(ast_node); end
  def test_uses_outline_keyword?(test_ast); end
end
class CukeModeler::Gherkin26Adapter < CukeModeler::Gherkin20Adapter
end
module CukeModeler::Parsing
  def dialect_feature_keyword; end
  def dialect_outline_keyword; end
  def dialect_scenario_keyword; end
  def dialect_step_keyword; end
  def get_word(word_set); end
  def self.adapter_class; end
  def self.dialect; end
  def self.dialect=(arg0); end
  def self.dialects; end
  def self.parse_text(source_text, filename = nil); end
  def self.parsing_method(source_text, filename); end
end
module CukeModeler::Containing
  def build_child_model(clazz, model_data); end
  def each(&block); end
  def each_descendant(&block); end
  def each_model(&block); end
  def populate_background(background_object, parsed_background_data); end
  def populate_block(step_object, parsed_step_data); end
  def populate_cell(cell_object, parsed_cell_data); end
  def populate_cell_value(cell_model, parsed_cell_data); end
  def populate_children(model, parsed_feature_data); end
  def populate_comment(comment_object, processed_comment_data); end
  def populate_comment_text(comment_model, parsed_comment_data); end
  def populate_content(doc_string_model, parsed_doc_string_data); end
  def populate_content_type(doc_string_model, parsed_doc_string_data); end
  def populate_directory(directory_object, processed_directory_data); end
  def populate_docstring(doc_string_object, parsed_doc_string_data); end
  def populate_example(example_object, parsed_example_data); end
  def populate_example_rows(example_model, parsed_example_data); end
  def populate_feature(feature_object, parsed_feature_data); end
  def populate_featurefile(feature_file_object, processed_feature_file_data); end
  def populate_keyword(model, parsed_model_data); end
  def populate_language(feature_model, parsed_feature_data); end
  def populate_outline(outline_object, parsed_outline_data); end
  def populate_outline_examples(outline_model, parsed_examples); end
  def populate_row(row_object, parsed_row_data); end
  def populate_row_cells(row_model, parsed_row_data); end
  def populate_row_models(table_model, parsed_table_data); end
  def populate_rule(rule_object, parsed_rule_data); end
  def populate_scenario(scenario_object, parsed_scenario_data); end
  def populate_step(step_object, parsed_step_data); end
  def populate_table(table_object, parsed_table_data); end
  def populate_tag(tag_object, processed_tag_data); end
  def populate_text(step_model, parsed_step_data); end
  include Enumerable
end
module CukeModeler::Taggable
  def all_tags; end
  def applied_tags; end
  def populate_tags(model, parsed_model_data); end
  def tag_output_string; end
  def tags; end
  def tags=(arg0); end
end
module CukeModeler::Parsed
  def parsing_data; end
  def parsing_data=(arg0); end
  def populate_parsing_data(model, parsed_model_data); end
end
module CukeModeler::Sourceable
  def populate_source_location(model, parsed_model_data); end
  def source_column; end
  def source_column=(arg0); end
  def source_line; end
  def source_line=(arg0); end
end
module CukeModeler::Nested
  def classes_for_type(type); end
  def get_ancestor(ancestor_type); end
  def parent_model; end
  def parent_model=(arg0); end
end
module CukeModeler::Named
  def name; end
  def name=(arg0); end
  def name_output_string; end
  def populate_name(model, parsed_model_data); end
end
module CukeModeler::Described
  def description; end
  def description=(arg0); end
  def description_output_string; end
  def no_description_to_output?; end
  def populate_description(model, parsed_model_data); end
  def trim_leading_blank_lines(description); end
  def trim_leading_spaces(description); end
  def trim_trailing_blank_lines(_description); end
  def trim_trailing_spaces(description); end
  def trimmed_description(description); end
end
module CukeModeler::Stepped
  def indented_step_text(step); end
  def populate_steps(model, parsed_model_data); end
  def steps; end
  def steps=(arg0); end
  def steps_output_string; end
end
class CukeModeler::Model
  def children; end
  def initialize(source_text = nil); end
  def to_s; end
  include CukeModeler::Containing
  include CukeModeler::Nested
end
class CukeModeler::FeatureFile < CukeModeler::Model
  def children; end
  def comments; end
  def comments=(arg0); end
  def feature; end
  def feature=(arg0); end
  def initialize(file_path = nil); end
  def name; end
  def path; end
  def path=(arg0); end
  def process_feature_file(file_path); end
  def to_s; end
  include CukeModeler::Parsed
end
class CukeModeler::Directory < CukeModeler::Model
  def children; end
  def directories; end
  def directories=(arg0); end
  def feature_files; end
  def feature_files=(arg0); end
  def initialize(directory_path = nil); end
  def name; end
  def path; end
  def path=(arg0); end
  def process_directory(directory_path); end
  def process_feature_file(file_path); end
  def to_s; end
end
class CukeModeler::Feature < CukeModeler::Model
  def background; end
  def background=(arg0); end
  def background?; end
  def background_output_string; end
  def child_element_output_string(model); end
  def children; end
  def has_background?; end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def language; end
  def language=(arg0); end
  def outlines; end
  def parse_source(source_text); end
  def rules; end
  def rules=(arg0); end
  def rules_output_string; end
  def scenarios; end
  def test_case_count; end
  def tests; end
  def tests=(arg0); end
  def tests_output_string; end
  def to_s; end
  include CukeModeler::Described
  include CukeModeler::Named
  include CukeModeler::Parsed
  include CukeModeler::Sourceable
  include CukeModeler::Taggable
end
class CukeModeler::Rule < CukeModeler::Model
  def background; end
  def background=(arg0); end
  def background?; end
  def background_output_string; end
  def children; end
  def has_background?; end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def outlines; end
  def parse_source(source_text); end
  def scenarios; end
  def test_output_string(model); end
  def tests; end
  def tests=(arg0); end
  def tests_output_string; end
  def to_s; end
  include CukeModeler::Described
  include CukeModeler::Named
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
  include CukeModeler::Taggable
end
class CukeModeler::Background < CukeModeler::Model
  def ==(other); end
  def children; end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def parse_source(source_text); end
  def to_s; end
  include CukeModeler::Described
  include CukeModeler::Named
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
  include CukeModeler::Stepped
end
class CukeModeler::Scenario < CukeModeler::Model
  def ==(other); end
  def children; end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def parse_source(source_text); end
  def to_s; end
  include CukeModeler::Described
  include CukeModeler::Named
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
  include CukeModeler::Stepped
  include CukeModeler::Taggable
end
class CukeModeler::Outline < CukeModeler::Model
  def ==(other); end
  def children; end
  def examples; end
  def examples=(arg0); end
  def examples_output_string; end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def parse_source(source_text); end
  def to_s; end
  include CukeModeler::Described
  include CukeModeler::Named
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
  include CukeModeler::Stepped
  include CukeModeler::Taggable
end
class CukeModeler::Example < CukeModeler::Model
  def add_row(row); end
  def argument_rows; end
  def children; end
  def determine_buffer_size(index); end
  def index_for_values(values); end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def ordered_row_values(row_hash); end
  def parameter_row; end
  def parameters; end
  def parameters_output_string; end
  def parse_source(source_text); end
  def remove_row(row_removed); end
  def rows; end
  def rows=(arg0); end
  def rows_output_string; end
  def string_for(cells, index); end
  def stringify_keys(hash); end
  def to_s; end
  include CukeModeler::Described
  include CukeModeler::Named
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
  include CukeModeler::Taggable
end
class CukeModeler::Step < CukeModeler::Model
  def ==(other); end
  def block; end
  def block=(arg0); end
  def children; end
  def doc_string_matches?(other_step); end
  def initialize(source_text = nil); end
  def keyword; end
  def keyword=(arg0); end
  def neither_step_has_doc_string?(other_step); end
  def neither_step_has_table?(other_step); end
  def only_one_step_has_doc_string?(other_step); end
  def only_one_step_has_table?(other_step); end
  def parse_source(source_text); end
  def table_matches?(other_step); end
  def text; end
  def text=(arg0); end
  def text_matches?(other_step); end
  def to_s; end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end
class CukeModeler::DocString < CukeModeler::Model
  def content; end
  def content=(arg0); end
  def content_output_string; end
  def content_type; end
  def content_type=(arg0); end
  def content_type_output_string; end
  def initialize(source_text = nil); end
  def parse_source(source_text); end
  def to_s; end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end
class CukeModeler::Table < CukeModeler::Model
  def children; end
  def determine_buffer_size(index); end
  def initialize(source_text = nil); end
  def parse_source(source_text); end
  def row_output_string(row); end
  def rows; end
  def rows=(arg0); end
  def to_s; end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end
class CukeModeler::Row < CukeModeler::Model
  def cells; end
  def cells=(arg0); end
  def children; end
  def initialize(source_text = nil); end
  def parse_source(source_text); end
  def to_s; end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end
class CukeModeler::Tag < CukeModeler::Model
  def initialize(source_text = nil); end
  def name; end
  def name=(arg0); end
  def parse_source(source_text); end
  def populate_name(model, parsed_model_data); end
  def to_s; end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end
class CukeModeler::Cell < CukeModeler::Model
  def initialize(source_text = nil); end
  def parse_source(source_text); end
  def to_s; end
  def value; end
  def value=(arg0); end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end
class CukeModeler::Comment < CukeModeler::Model
  def initialize(source_text = nil); end
  def parse_source(source_text); end
  def text; end
  def text=(arg0); end
  def to_s; end
  include CukeModeler::Parsed
  include CukeModeler::Parsing
  include CukeModeler::Sourceable
end