# SPDX-License-Identifier: Apache-2.0

macro(toolchain_cc_coverage)

zephyr_compile_options(
  -fprofile-arcs
  -ftest-coverage
  -fno-inline
)

if (NOT CONFIG_COVERAGE_GCOV)

  zephyr_link_libraries(
    -lgcov
  )

endif()

endmacro()
