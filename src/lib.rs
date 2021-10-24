#[macro_use]
extern crate rutie;

use rutie::{Module, Object, RString, VM};

module!(DataFusion);

methods!(
    DataFusion,
    _rtself,
    fn pub_reverse(input: RString) -> RString {
        let ruby_string = input.map_err(|e| VM::raise_ex(e)).unwrap();

        RString::new_utf8(&ruby_string.to_string().chars().rev().collect::<String>())
    }
);

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn init_datafusion_ruby() {
    Module::new("DataFusion").define(|module| {
        module.def_self("reverse", pub_reverse);
    });
}
