-- Sabalan Pipeline
local partitionGuid = Guid('2F8146E8-174D-483C-A6EA-4041FA6CE90E')
local flagGuids = {
--  A= Guid('06CF4E88-B765-498F-8013-C67CF790D231'),
--  B= Guid('3F074B56-27A0-4863-96B7-41E69CE41CC2'),
--  C= Guid('3EA79FFC-D38A-4A5E-B7E8-6A6636429996'),
  D= Guid('A5CCFFDA-06AA-4525-B7C1-CDCEE6D9E883'),  -- Gunship
--  E= Guid('6865A1C4-26A5-4757-9C62-25FACE2A3277'),
--  F= Guid('D863B2D6-7A22-4A1B-9288-504F013D1A6A'),
--  G= Guid('89561576-88BF-4B46-B72E-57926248DB95')
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end