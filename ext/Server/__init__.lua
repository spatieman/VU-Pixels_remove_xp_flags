Events:Subscribe('Partition:Loaded', function(partition)
	if partition == nil then
		return
	end

	local instances = partition.instances
	for _, instance in pairs(instances) do
		if instance ~= nil then
			-- Remove depthtree preventing craters on roads and other areas.
			if instance:Is("VehicleSpawnReferenceObjectData") then
				instance = VehicleSpawnReferenceObjectData(instance)
				instance:MakeWritable()
				instance.applyDamageToAbandonedVehicles = true
				instance.maxCount = -1
				instance.maxCountSimultaneously = 10
				instance.totalCountSimultaneouslyOfType = 10
				instance.autoSpawn = true
				instance.spawnDelay = 5
				instance.initialSpawnDelay = 3
			end
		end
	end
end)
