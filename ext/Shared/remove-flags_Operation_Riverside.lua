-- Operation Riverside
local partitionGuid = Guid('EB060E00-2120-4427-8492-E1509EA9433D')
local flagGuids = {
--  A= Guid('162CE6D2-DDF9-4F85-9A7B-5A52CADA3F08'),
--  B= Guid('930D9122-025A-4026-976A-414FD018C3B1'),
  C= Guid('5D6C4E78-03E0-4A7C-985D-1148360A9DD7'),   -- Gunship
--  D= Guid('5DAD9068-24CC-4856-809F-B673588BC651'),
--  E= Guid('5A201252-5649-4BA2-A5AE-6081FF189C96'),
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