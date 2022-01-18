# Copyright 2017 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Basic build version definitions
# ===============================
# This Makefile include contains the config options included at the beginning
# of the build process that govern the subsequent generated package name,
# version and other dependent internal build variables.
# It also states which distros the build is compatible with, so that it can be
# validated at build time, as well as heuristicaly find the proper repo path
# to put the final rpms generated by the build system.

# Versioning description
# ======================
#
# - AT_NAME:            Final build Advance Toolchain package name.
#
# - AT_MAJOR_VERSION:   Changes whenever the compiler or the ABI changes.
#                       Should be in X.Y format, where X=compiler change,
#                       Y=ABI change within that compiler change cycle. All
#                       first major releases should be X.0. Then, if the ABI
#                       changes, increment the second digit (i.e. X.1).
#
# - AT_REVISION_NUMBER: The revision number. Starts at 0 and is incremented
#                       whenever a new official build that doesn't change the
#                       compiler version or the ABI is required.
#
# - AT_INTERNAL:        Tag for internal releases (i.e. alpha, beta, rc). For
#                       GM or external releases, it should be "none".
#
# - AT_DIR_NAME:        Optional name of the directory. If not defined, will
#                       use a combination of AT_NAME, AT_MAJOR_VERSION,
#                       AT_INTERNAL and AT_REVISION_NUMBER.
#
# - AT_PREVIOUS_VERSION Previous compatible AT version supported (It may be
#                       further restricted by distro specific settings)
#
AT_NAME := at
AT_MAJOR_VERSION := 14.0
AT_REVISION_NUMBER := 4
AT_INTERNAL := rc1
AT_PREVIOUS_VERSION := 13.0
