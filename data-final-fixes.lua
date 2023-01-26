local belt_types = { "linked-belt", "fast-linked-belt", "express-linked-belt" }

for i = 1, 3 do
    data.raw["linked-belt"][belt_types[i]].fast_replaceable_group = "linked-belts"
    if i < 3 then data.raw["linked-belt"][belt_types[i]].next_upgrade = belt_types[i + 1] end
end

if data.raw["linked-belt"]["advanced-linked-belt"] then
    data.raw["linked-belt"][belt_types[3]].next_upgrade = "advanced-linked-belt"
    data.raw["linked-belt"]["advanced-linked-belt"].fast_replaceable_group = "linked-belts"
    data.raw["linked-belt"]["advanced-linked-belt"].next_upgrade = "superior-linked-belt"
    data.raw["linked-belt"]["superior-linked-belt"].fast_replaceable_group = "linked-belts"
end
