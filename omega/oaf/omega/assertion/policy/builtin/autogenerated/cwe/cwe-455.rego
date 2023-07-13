package openssf.omega.policy.autogenerated.cwe.cwe_455

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_455
# title: "CWE-455: Non-exit on Failed Initialization"
# methodology: >
#   The product does not exit or otherwise modify its operation when security-relevant errors occur during initialization, such as when a configuration file has a format error or a hardware security module (HSM) cannot be activated, which can cause the product to execute in a less secure fashion than intended by the administrator.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-455" in assertion.predicate.content.tags
    }
}