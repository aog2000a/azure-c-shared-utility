#Copyright (c) Microsoft. All rights reserved.
#Licensed under the MIT license. See LICENSE file in the project root for full license information.

#this is CMakeLists for micromock unittests
cmake_minimum_required(VERSION 2.8.11)

set(theseTestsName umocktypes_bool_unittests)

set(${theseTestsName}_test_files
umocktypes_bool_unittests.c
)

set(${theseTestsName}_c_files
umocktypes_bool_mocked.c
)

set(${theseTestsName}_h_files
)

umockc_build_test_artifacts(${theseTestsName} ON)
