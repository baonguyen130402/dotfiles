local status_ok, simulators = pcall(require, "telescope-simulators")
if not status_ok then
  return
end

local opts = simulators.setup {
  android_emulator = false,
  apple_simulator = true,
}

return opts
