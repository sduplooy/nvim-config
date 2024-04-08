vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close the current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Closes current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- dotnet
keymap.set("n", "<leader>.r", "<cmd>TermExec cmd='dotnet restore **/*.sln'<CR>", { desc = "Restores Nuget packages" })
keymap.set("n", "<leader>.c", "<cmd>TermExec cmd='dotnet clean **/*.sln'<CR>", { desc = "Cleans solution" })
keymap.set("n", "<leader>.b", "<cmd>TermExec cmd='dotnet build **/*.sln'<CR>", { desc = "Builds current project" })
keymap.set(
    "n",
    "<leader>.t",
    "<cmd>TermExec cmd='dotnet test **/*.sln'<CR>",
    { desc = "Run unit tests in current project" }
)
