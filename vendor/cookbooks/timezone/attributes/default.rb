# Override this in a role or cookbook.
#
# Examples:
#
#   In a role:
#
#     override_attributes(:timezone => { :value => 'Europe/Brussels' })
default[:timezone][:value] = nil
