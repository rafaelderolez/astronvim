return {
  -- Configure AstroNvim updates
  remote = "origin", -- remote to use
  channel = "nightly", -- "stable" or "nightly"
  -- version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
  branch = "neovim-0.8", -- branch name (NIGHTLY ONLY)
  -- commit = nil, -- commit hash (NIGHTLY ONLY)
  pin_plugins = true, -- true, false, or a string for a specific AstroNvim snapshot to use (true will only track the current version if channel is "stable")
  skip_prompts = false, -- skip prompts about breaking changes
  show_changelog = true, -- show the changelog after performing an update
  -- remotes = { -- easily add new remotes to track
  --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
  --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
  --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
  -- },
}
