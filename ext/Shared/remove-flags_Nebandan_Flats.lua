-- Nebandan Flats
local partitionGuid = Guid('69EEB535-3952-4C5E-8575-FF83481E0FF8')
local flagGuids = {
--  A= Guid('935C31F5-DE6F-45F3-A37F-B09129867C3F'),
--  B= Guid('F2A2C9E0-92BE-4AB4-A08F-7186B7B09615'),
--  C= Guid('7C2C0B9F-9EA2-44A9-BD8B-3C8EC61F05B6'),
  D= Guid('EE053322-2C29-4286-A830-47A7FF14E81C'),  -- Gunship
--  E= Guid('69BAC7F4-F06B-4278-AD17-261897DCA4EF'),
--  F= Guid('006331EA-59B3-4DAA-BAEB-6F0C877DA125'),
--  G= Guid('956BC2C5-14E6-4A7A-9839-0CDF8693B38F')
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end