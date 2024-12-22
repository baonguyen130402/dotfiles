local status_ok, xcodebuild = pcall(require, "xcodebuild")
if not status_ok then
  return
end

local opts = xcodebuild.setup {
  logs = {
    logs_formatter = nil,
  },
  code_coverage = {
    enabled = true,
  },
}

return opts
