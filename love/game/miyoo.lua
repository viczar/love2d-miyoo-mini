-- Table to store the mappings of Miyoo Mini keys to their corresponding love2d keys
local miyoo = {
    keys = {
        left = "left",    -- Left arrow key
        up = "up",        -- Up arrow key
        right = "right",  -- Right arrow key
        down = "down",    -- Down arrow key
        start = "return", -- Start button mapped to Enter key
        select = "rctrl", -- Select button mapped to Right Control key
        a = "space",      -- A button mapped to Space key
        b = "lctrl",      -- B button mapped to Left Control key
        y = "lalt",       -- Y button mapped to Left Alt key
        x = "lshift",     -- X button mapped to Left Shift key
        l = "e",          -- L button mapped to E key
        l2 = "tab",       -- L2 button mapped to Tab key
        r = "t",          -- R button mapped to T key
        r2 = "backspace", -- R2 button mapped to Backspace key
        home = "home"     -- Home button mapped to Home key
    }
}

-- Table to store the reverse mappings of love2d keys to their corresponding Miyoo Mini keys
local reverse_keys = {}

-- Iterate over each key-value pair in the miyoo.keys table
for k, v in pairs(miyoo.keys) do
    -- Assign the love2d key as the key and the Miyoo Mini key as the value in the reverse_keys table
    reverse_keys[v] = k
end

-- Add the reverse_keys table to the miyoo table for easy access
miyoo.reverse_keys = reverse_keys

-- Return the miyoo table as the module's output
return miyoo