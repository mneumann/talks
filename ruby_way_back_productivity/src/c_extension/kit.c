#include "ruby.h"

VALUE Kit_rocks(VALUE self)  // method Kit#rocks
{
  return rb_str_new2("Ruby rocks!");
}

void Init_kit()
{
  VALUE cKit = rb_define_class("Kit", rb_cObject);
  rb_define_method(cKit, "rocks", Kit_rocks, 0);
}
