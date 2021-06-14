# SPDX-License-Identifier: BSD-3-Clause
# Copyright 2021, Intel Corporation

include(${SRC_DIR}/../helpers.cmake)

setup()

execute(${TEST_EXECUTABLE} c ${DIR}/testfile)
pmreorder_create_store_log(${DIR}/testfile ${TEST_EXECUTABLE} x ${DIR}/testfile 1)
pmreorder_execute(true ReorderAccumulative "PMREORDER_FILL=ReorderAccumulative" ${TEST_EXECUTABLE} o)

finish()
