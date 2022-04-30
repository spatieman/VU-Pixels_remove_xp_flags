-- Armored Shield
local partitionGuid = Guid('877F24E5-828F-4A52-874F-939839E9EE60')
local flagGuids = {
--  A= Guid('F66DF6CB-24E7-4D27-8771-0A8E08893C30'),
  B= Guid('55369966-C60E-4CC8-8B51-89F91DAE0FDE'),   -- Gunship
--  C= Guid('E08EAD60-5113-4826-876D-DB6BD9A2E8F6'),
--  D= Guid('F4B7EA29-0057-45B1-8A38-B1485CC985AD'),
--  E= Guid('C1A66665-63E6-4539-8DF3-246FEE0F3702'),
--  F= Guid('D863B2D6-7A22-4A1B-9288-504F013D1A6A'), --NOP
--  G= Guid('89561576-88BF-4B46-B72E-57926248DB95') -- NOP
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end