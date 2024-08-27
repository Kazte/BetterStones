local MyHearthstoneAddon = MyHearthstoneAddon or {}

function MyHearthstoneAddon:LoadSpells()
    -- Define the function to show Hearthstones and Portals
    function MyHearthstoneAddon:ShowHearthstonesAndPortals()
        local playerClass = UnitClass("player")
        local spells = {
            ["Hearthstone"] = 556, -- Hearthstone spell ID
            ["Great Seal"] = 281404, -- Great Seal
            ["Dalaran"] = 224869, -- Dalaran Hearthstone
            ["Garrison"] = 167216, -- Garrison Hearthstone
        }

        if playerClass == "Mage" then
            spells["Portal: Stormwind"] = 10059
            spells["Portal: Ironforge"] = 11416
            -- Add other Mage portals
        elseif playerClass == "Death Knight" then
            spells["Death Gate"] = 50977 -- Acherus portal
        end

        print("Available Hearthstones and Portals:")
        for name, spellID in pairs(spells) do
            if IsSpellKnown(spellID) then
                print(name)
            end
        end
    end
end
