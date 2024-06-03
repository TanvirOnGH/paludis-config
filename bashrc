# General Settings
ARCH="x86_64_pc_linux_gnu"
GEN="native"
OPT_LVL="3"
COMMON_FLAGS="-march=${GEN} -mtune=${GEN} -O${OPT_LVL} -pipe"

# Language-Specific Flags
# Ada
${ARCH}_ADAFLAGS="${COMMON_FLAGS}"

# C/C++
${ARCH}_CFLAGS="${COMMON_FLAGS}"
${ARCH}_CXXFLAGS="${COMMON_FLAGS}"
${ARCH}_CPPFLAGS="${COMMON_FLAGS}"

# Fortran
${ARCH}_FCFLAGS="${COMMON_FLAGS}"
${ARCH}_FFLAGS="${COMMON_FLAGS}"

# YACC (Uncomment if needed)
# ${ARCH}_YFLAGS="${COMMON_FLAGS}"

# Rust
RUSTFLAGS="-C target-cpu=${GEN} -C opt-level=${OPT_LVL} -C debug-assertions=n -C debuginfo=0 -C link-dead-code=n -C strip=symbols"

# Linker Flags
LDFLAGS="-Wl,-O2,--as-needed"

# Additional optimizations (optional, based on specific needs)
# COMMON_FLAGS="${COMMON_FLAGS} -flto"
# For faster linking
# LDFLAGS="${LDFLAGS} -fuse-ld=gold"

# Safety and Debugging
# Debugging (uncomment during development)
# COMMON_FLAGS="${COMMON_FLAGS} -g"
# Rust debugging
# RUSTFLAGS="${RUSTFLAGS} -C debuginfo=2"
