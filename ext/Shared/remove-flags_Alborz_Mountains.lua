-- Alborz Mountains
local partitionGuid = Guid('D0D71527-3CDE-4BF9-8CF4-ACA12000CD98')
local flagGuids = {
--  A= Guid('61392ACB-4293-4B72-AE2A-92467B1B4856'), 
--  B= Guid('8899B328-910D-4DFC-BBE7-6B44C792942F'), 
--  C= Guid('4F73A4EE-859B-4867-9654-03BE1048AB8E'),
  C1= Guid('E934915A-75DC-4E30-A1CD-88B2206447C6'), -- Gunshop flag CQ-S
--  D= Guid('C0AFA965-5CA8-4943-A560-6CAC52145505'), 
  E= Guid('26DC481C-7DEC-472F-BABB-9383B255A69B'),  -- Gunship flag
--  F= Guid('753BC71E-627B-4331-91C8-BBB69D099E4F'), 
--  G= Guid('D8B7F011-6188-44EC-8966-D38146B36579')  
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end