// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

#include <stdint.h>
#include <stdlib.h>
#include "testrunnerswitcher.h"

BEGIN_TEST_SUITE(umock_c_ptrarg_leak_integrationtests)

TEST_SUITE_INITIALIZE(suite_init)
{
}

TEST_SUITE_CLEANUP(suite_cleanup)
{
}

TEST_FUNCTION_INITIALIZE(test_function_init)
{
}

TEST_FUNCTION_CLEANUP(test_function_cleanup)
{
}

TEST_FUNCTION(_matched_call_with_pointer_type_argument_does_not_leak)
{
}

END_TEST_SUITE(umock_c_ptrarg_leak_integrationtests)
