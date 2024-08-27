local MyHearthstoneAddon = MyHearthstoneAddon or {}

function MyHearthstoneAddon:CreateMinimapButton()
    local frame = CreateFrame("Button", "MyHearthstoneButton", Minimap)
    frame:SetFrameStrata("MEDIUM")
    frame:SetWidth(32)
    frame:SetHeight(32)
    frame:SetFrameLevel(8)
    frame:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
    frame:SetPoint("TOPLEFT", Minimap, "TOPLEFT")

    local icon = frame:CreateTexture(nil, "BACKGROUND")
    icon:SetTexture("Interface\\Icons\\inv_misc_rune_01")
    icon:SetWidth(20)
    icon:SetHeight(20)
    icon:SetPoint("CENTER", frame, "CENTER")

    frame:SetScript("OnClick", function(self, button)
        MyHearthstoneAddon:ShowHearthstonesAndPortals()
    end)

    frame:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:SetText("Show Hearthstones and Portals")
        GameTooltip:Show()
    end)

    frame:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)
end
