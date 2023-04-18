-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/lain/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/lain/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/lain/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/lain/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lain/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { 'require("core.lib.autoload")["autoload"]("core.lib.setup")["setup"]("Comment", {})' },
    keys = { { "", "<leader>c" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["ccc.nvim"] = {
    commands = { "CccPick", "CccHighlighterEnable", "CccHighlighterToggle" },
    config = { 'require("modules.tools.rgb.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/ccc.nvim",
    url = "https://github.com/uga-rosa/ccc.nvim"
  },
  conjure = {
    config = { 'require("modules.tools.eval.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/conjure",
    url = "https://github.com/Olical/conjure"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewFileHistory", "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewRefresh" },
    config = { 'require("modules.tools.neogit.+diffview.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["editor.scratch"] = {
    commands = { "Scratch" },
    config = { 'require("modules.editor.scratch.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/editor.scratch",
    url = "https://github.com/editor.scratch"
  },
  ["eunoia.nvim"] = {
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/eunoia.nvim",
    url = "https://github.com/petrolblue/eunoia.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("modules.ui.vc-gutter.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hotpot.nvim"] = {
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/hotpot.nvim",
    url = "https://github.com/rktjmp/hotpot.nvim"
  },
  ["hydra.nvim"] = {
    config = { 'require("modules.ui.hydra.config")' },
    keys = { { "", "<leader>g" }, { "", "<leader>v" }, { "", "<leader>f" }, { "", "<leader>d" }, { "", "<leader>m" }, { "", "<leader>t" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/hydra.nvim",
    url = "https://github.com/anuvyklack/hydra.nvim"
  },
  ["leap-ast.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/leap-ast.nvim",
    url = "https://github.com/ggandor/leap-ast.nvim"
  },
  ["leap.nvim"] = {
    config = { 'require("modules.config.default.+bindings.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["matchparen.nvim"] = {
    config = { 'require("core.lib.autoload")["autoload"]("core.lib.setup")["setup"]("matchparen", {})' },
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/matchparen.nvim",
    url = "https://github.com/monkoose/matchparen.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { 'require("modules.tools.neogit.config")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nui.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("modules.config.default.+smartparens.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-parinfer-rust"] = {
    config = { 'require("modules.editor.parinfer.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-parinfer-rust",
    url = "https://github.com/harrygallagher4/nvim-parinfer-rust"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ufo" },
    commands = { "TSInstall", "TSUpdate", "TSInstallSync", "TSUpdateSync", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    config = { 'require("modules.tools.tree-sitter.config")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ufo"] = {
    config = { 'require("modules.editor.fold.config")' },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-window-picker"] = {
    config = { 'require("modules.ui.window-select.config")' },
    keys = { { "", "<space>w" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  nvlime = {
    after_files = { "/home/lain/.local/share/nvim/site/pack/packer/opt/nvlime/after/plugin/cmp_nvlime.lua" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/nvlime",
    url = "https://github.com/monkoose/nvlime"
  },
  ["nyoom.5e06be48"] = {
    config = { 'require("modules.tools.antifennel.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/nyoom.5e06be48",
    url = "https://github.com/nyoom.5e06be48"
  },
  ["nyoom.5ea6febe"] = {
    config = { 'require("modules.ui.modeline.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/nyoom.5ea6febe",
    url = "https://github.com/nyoom.5ea6febe"
  },
  ["nyoom.8af4af0e"] = {
    config = { 'require("modules.config.default.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/nyoom.8af4af0e",
    url = "https://github.com/nyoom.8af4af0e"
  },
  ["nyoom.bc4ecd1d"] = {
    config = { 'require("modules.editor.word-wrap.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/nyoom.bc4ecd1d",
    url = "https://github.com/nyoom.bc4ecd1d"
  },
  ["nyoom.ce9ac7f6"] = {
    config = { 'require("modules.editor.hotpot.+reflect.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/nyoom.ce9ac7f6",
    url = "https://github.com/nyoom.ce9ac7f6"
  },
  ["nyoom.e69e8fc3"] = {
    config = { 'require("modules.editor.format.config")' },
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/nyoom.e69e8fc3",
    url = "https://github.com/nyoom.e69e8fc3"
  },
  ["octo.nvim"] = {
    commands = { "Octo" },
    config = { 'require("core.lib.autoload")["autoload"]("core.lib.setup")["setup"]("octo", {})' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/one-small-step-for-vimkind",
    url = "https://github.com/jbyuki/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["parinfer-rust"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/parinfer-rust",
    url = "https://github.com/eraserhd/parinfer-rust"
  },
  playground = {
    commands = { "TSPlayground" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope-tabs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-tabs",
    url = "https://github.com/LukasPietzschmann/telescope-tabs"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { 'require("modules.completion.telescope.config")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-lua/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm" },
    config = { 'require("core.lib.autoload")["autoload"]("core.lib.setup")["setup"]("toggleterm", {})' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/lain/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["which-key.nvim"] = {
    config = { 'require("modules.config.default.+which-key.config")' },
    keys = { { "", "<leader>" }, { "", '"' }, { "", "'" }, { "", "`" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lain/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^gitsigns"] = "gitsigns.nvim",
  ["^hydra"] = "hydra.nvim",
  ["^nui"] = "nui.nvim",
  ["^plenary"] = "plenary.nvim",
  ["^telescope"] = "telescope.nvim",
  ["^which%-key"] = "which-key.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: matchparen.nvim
time([[Setup for matchparen.nvim]], true)
try_loadstring("\27LJ\2\n'\0\3\4\0\0\0\b\5\0\1\0X\3\4€\5\1\2\0X\3\2€+\3\1\0X\4\1€+\3\2\0L\3\2\0œ\1\0\0\3\0\b\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1'\0\4\0\a\0\3\0X\0\5€6\0\5\0009\0\6\0'\2\a\0D\0\2\0X\0\2€+\0\0\0L\0\2\0K\0\1\0\24silent! do FileType\bcmd\bvim\19nvim-lspconfig\20matchparen.nvim\vloader\vpacker\frequirew\1\0\5\0\b\0\0213\0\0\0006\2\1\0009\2\2\0029\2\3\2'\3\4\0'\4\5\0B\0\4\2\15\0\0\0X\1\b€3\0\6\0006\1\1\0009\1\a\1\18\3\0\0)\4\0\0002\0\0€D\1\3\0X\0\3€+\0\0\0002\0\0€L\0\2\0K\0\1\0\rdefer_fn\0\5\6%\vexpand\afn\bvim\0½\1\1\0\t\0\n\0\0163\0\0\0006\1\1\0009\1\2\0019\1\3\0015\3\4\0005\4\5\0=\0\6\0046\5\1\0009\5\2\0059\5\a\5'\a\b\0004\b\0\0B\5\3\2=\5\t\0042\0\0€D\1\3\0\ngroup\20matchparen.nvim\24nvim_create_augroup\rcallback\1\0\0\1\4\0\0\fBufRead\16BufWinEnter\15BufNewFile\24nvim_create_autocmd\bapi\bvim\0\0", "setup", "matchparen.nvim")
time([[Setup for matchparen.nvim]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0D\0\2\0\18gitsigns.nvim\vloader\vpacker\frequire¾\1\1\0\6\0\v\1\0286\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3'\5\5\0B\3\2\2'\4\6\0&\2\4\2B\0\2\0016\0\0\0009\0\a\0009\0\b\0\t\0\0\0X\0\a€3\0\t\0006\1\0\0009\1\n\1\18\3\0\0002\0\0€D\1\2\0X\0\3€+\0\0\0002\0\0€L\0\2\0K\0\1\0\rschedule\0\16shell_error\6v\15 rev-parse\n%:p:h\vexpand\fgit -C \vsystem\afn\bvim\0\20\1\0\1\0\1\0\0033\0\0\0002\0\0€L\0\2\0\0¡\2\1\0\5\0\a\0\t3\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0005\4\5\0=\0\6\0042\0\0€D\1\3\0\rcallback\1\0\2\fpattern\6*\tdesc¹\1'(fn [] (vim.fn.system (.. \"git -C \" (vim.fn.expand \"%:p:h\") \" rev-parse\")) (when (= vim.v.shell_error 0) (vim.schedule (fn [] ((. (require \"packer\") \"loader\") \"gitsigns.nvim\")))))\fBufRead\24nvim_create_autocmd\bapi\bvim\0\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nh\0\0\3\0\a\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\6\0\4\0X\1\4€\6\0\5\0X\1\2€\a\0\6\0X\1\2€+\1\1\0X\2\1€+\1\2\0L\1\2\0\5\r[packer]\15NvimTree_1\6%\vexpand\afn\bvim \1\1\0\4\0\b\0\0203\0\0\0\15\0\0\0X\1\r€6\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\0016\1\5\0'\3\6\0B\1\2\0029\1\a\1'\3\4\0002\0\0€D\1\2\0X\1\3€+\1\0\0002\0\0€L\1\2\0K\0\1\0\vloader\vpacker\rautoload\20nvim-treesitter\29nvim_del_augroup_by_name\bapi\bvim\0¦\1\1\0\t\0\n\0\0163\0\0\0006\1\1\0009\1\2\0019\1\3\0015\3\4\0005\4\a\0006\5\1\0009\5\2\0059\5\5\5'\a\6\0004\b\0\0B\5\3\2=\5\b\4=\0\t\0042\0\0€D\1\3\0\rcallback\ngroup\1\0\0\20nvim-treesitter\24nvim_create_augroup\1\2\0\0\fBufRead\24nvim_create_autocmd\bapi\bvim\0\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
-- Config for: nyoom.5e06be48
time([[Config for nyoom.5e06be48]], true)
require("modules.tools.antifennel.config")
time([[Config for nyoom.5e06be48]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
require("modules.config.default.+bindings.config")
time([[Config for leap.nvim]], false)
-- Config for: nyoom.8af4af0e
time([[Config for nyoom.8af4af0e]], true)
require("modules.config.default.config")
time([[Config for nyoom.8af4af0e]], false)
-- Config for: conjure
time([[Config for conjure]], true)
require("modules.tools.eval.config")
time([[Config for conjure]], false)
-- Config for: nyoom.5ea6febe
time([[Config for nyoom.5ea6febe]], true)
require("modules.ui.modeline.config")
time([[Config for nyoom.5ea6febe]], false)
-- Config for: nyoom.ce9ac7f6
time([[Config for nyoom.ce9ac7f6]], true)
require("modules.editor.hotpot.+reflect.config")
time([[Config for nyoom.ce9ac7f6]], false)
-- Config for: nyoom.e69e8fc3
time([[Config for nyoom.e69e8fc3]], true)
require("modules.editor.format.config")
time([[Config for nyoom.e69e8fc3]], false)
-- Config for: nyoom.bc4ecd1d
time([[Config for nyoom.bc4ecd1d]], true)
require("modules.editor.word-wrap.config")
time([[Config for nyoom.bc4ecd1d]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'TSBufEnable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSBufEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSBufDisable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSBufDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSBufDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSEnable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSDisable', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFileHistory', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFileHistory', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFileHistory ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSModuleInfo', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSModuleInfo', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSModuleInfo ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewClose', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Neogit', function(cmdargs)
          require('packer.load')({'neogit'}, { cmd = 'Neogit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neogit'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Neogit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewToggleFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewToggleFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewToggleFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSPlayground', function(cmdargs)
          require('packer.load')({'playground'}, { cmd = 'TSPlayground', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'playground'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSPlayground ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Octo', function(cmdargs)
          require('packer.load')({'octo.nvim'}, { cmd = 'Octo', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'octo.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Octo ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewRefresh', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewRefresh ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Scratch', function(cmdargs)
          require('packer.load')({'editor.scratch'}, { cmd = 'Scratch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'editor.scratch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Scratch ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'ToggleTerm', function(cmdargs)
          require('packer.load')({'toggleterm.nvim'}, { cmd = 'ToggleTerm', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'toggleterm.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('ToggleTerm ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CccPick', function(cmdargs)
          require('packer.load')({'ccc.nvim'}, { cmd = 'CccPick', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ccc.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CccPick ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSInstall', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSInstall', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSInstall ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CccHighlighterEnable', function(cmdargs)
          require('packer.load')({'ccc.nvim'}, { cmd = 'CccHighlighterEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ccc.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CccHighlighterEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSUpdate', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSUpdate', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSUpdate ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CccHighlighterToggle', function(cmdargs)
          require('packer.load')({'ccc.nvim'}, { cmd = 'CccHighlighterToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ccc.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CccHighlighterToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSInstallSync', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSInstallSync', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSInstallSync ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFocusFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFocusFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFocusFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TSUpdateSync', function(cmdargs)
          require('packer.load')({'nvim-treesitter'}, { cmd = 'TSUpdateSync', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-treesitter'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TSUpdateSync ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <leader> <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>leader>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ` <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "`", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>g <cmd>lua require("packer.load")({'hydra.nvim'}, { keys = "<lt>leader>g", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ' <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "'", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> " <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "\"", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>m <cmd>lua require("packer.load")({'hydra.nvim'}, { keys = "<lt>leader>m", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <space>w <cmd>lua require("packer.load")({'nvim-window-picker'}, { keys = "<lt>space>w", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>f <cmd>lua require("packer.load")({'hydra.nvim'}, { keys = "<lt>leader>f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>c <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "<lt>leader>c", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>v <cmd>lua require("packer.load")({'hydra.nvim'}, { keys = "<lt>leader>v", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>t <cmd>lua require("packer.load")({'hydra.nvim'}, { keys = "<lt>leader>t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>d <cmd>lua require("packer.load")({'hydra.nvim'}, { keys = "<lt>leader>d", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType scheme ++once lua require("packer.load")({'nvim-parinfer-rust'}, { ft = "scheme" }, _G.packer_plugins)]]
vim.cmd [[au FileType gitcommit ++once lua require("packer.load")({'gitsigns.nvim'}, { ft = "gitcommit" }, _G.packer_plugins)]]
vim.cmd [[au FileType fennel ++once lua require("packer.load")({'nvim-parinfer-rust'}, { ft = "fennel" }, _G.packer_plugins)]]
vim.cmd [[au FileType guile ++once lua require("packer.load")({'nvim-parinfer-rust'}, { ft = "guile" }, _G.packer_plugins)]]
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'nvim-parinfer-rust'}, { ft = "clojure" }, _G.packer_plugins)]]
vim.cmd [[au FileType lisp ++once lua require("packer.load")({'nvim-parinfer-rust', 'nvlime'}, { ft = "lisp" }, _G.packer_plugins)]]
vim.cmd [[au FileType racket ++once lua require("packer.load")({'nvim-parinfer-rust'}, { ft = "racket" }, _G.packer_plugins)]]
vim.cmd [[au FileType janet ++once lua require("packer.load")({'nvim-parinfer-rust'}, { ft = "janet" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
