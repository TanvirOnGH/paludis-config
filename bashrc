# Compiler Flags
GEN="native"
OPT_LVL="3"
COMMON_FLAGS="-march=${GEN} -mtune=${GEN} -O${OPT_LVL} -pipe"
#- Ada
x86_64_pc_linux_gnu_ADAFLAGS="${COMMON_FLAGS}"
#- C/CXX
x86_64_pc_linux_gnu_CFLAGS="${COMMON_FLAGS}"
x86_64_pc_linux_gnu_CXXFLAGS="${COMMON_FLAGS}"
x86_64_pc_linux_gnu_CPPFLAGS="${COMMON_FLAGS}"
#- Fortran
x86_64_pc_linux_gnu_FCFLAGS="${COMMON_FLAGS}"
x86_64_pc_linux_gnu_FFLAGS="${COMMON_FLAGS}"
# YACC
#x86_64_pc_linux_gnu_YFLAGS="${COMMON_FLAGS}"
#- Rust
x86_64_pc_linux_gnu_RUSTFLAGS="-C target-cpu=${GEN} -C opt-level=${OPT_LVL} -C debug-assertions=n -C debuginfo=0 -C link-dead-code=n -C strip=symbols"

# Linker Flags
x86_64_pc_linux_gnu_LDFLAGS="-Wl,-O2,--as-needed"
