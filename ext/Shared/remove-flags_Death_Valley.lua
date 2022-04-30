-- Death Valley
local partitionGuid = Guid('44297130-9649-4B14-8F52-00ABE0FC93BF')
local flagGuids = {
--  A= Guid('6518CBF7-4308-4F12-85C7-5FDC2F94B81E'), --
--  B= Guid('DDA15F4E-004C-479D-965E-BAAD3BE4C868'), --
--  C= Guid('BBA18A63-3EAB-4FE6-A31F-D93F78CF83B6'),
  D= Guid('7BF15C63-0076-4A18-B518-75A6FB9DFC74'),    -- Gunship --
--  E= Guid('22D41858-9F15-4681-A0BA-D5A012089867'), --
--  F= Guid('9F13164D-808F-4A2B-A9BC-348B36B01CA8'), --
--  G= Guid('18F11053-C3BB-457D-89FB-72EEE31B5871') -- 
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end