-- Bandar Desert
--local partitionGuid = Guid('5BC8BB57-D053-42EE-8F6B-AC74FC49E914') -- Flag stuff fail
local partitionGuid = Guid('B8A00A4A-1583-4B0A-A7BB-EA1C1CC830AB')
local flagGuids = {
  GS= Guid('BBAC4363-6294-405D-B986-3F849FB41092'), --
--  A= Guid('480655B2-11E9-4909-985B-327D77A537FD'), --
--  B= Guid('B4DD3644-A225-4B0A-BA39-7FE37F28C0E9'), --
--  C= Guid('8086FFE9-F0F5-47E7-9160-437A3BCBD2D8'),
--  D= Guid('BE72FFDB-9E9E-4E3B-9D7B-BECEFEDB6D80'), 
--  E= Guid('0393793D-F9B1-42A8-9900-7C6726566CF8'), --
--  F= Guid('0831032E-9E71-4E87-BE20-EC5BE6432963'), --
--  G= Guid('ED0C25F4-7362-41D9-9D80-4AAEE74E6BC6')    -- Gunship --
}

for _, flagGuid in pairs(flagGuids) do
  ResourceManager:RegisterInstanceLoadHandler(partitionGuid, flagGuid, function(instance)
    local refobjInstance = ReferenceObjectData(instance)
  
    refobjInstance:MakeWritable()
    refobjInstance.excluded = true
  end)
end