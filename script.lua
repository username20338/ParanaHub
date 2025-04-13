-- 📡 Terminal de Comandos do ParanaHub Supreme
local Rayfield = Rayfield or shared.rayfield_loaded -- Garante compatibilidade

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	local lower = msg:lower()

	if lower == "/hino do parana" then
		local s = Instance.new("Sound", game:GetService("SoundService"))
		s.SoundId = "rbxassetid://1843522197"
		s.Volume = 10
		s.Name = "ParanaHino"
		s:Play()
		Rayfield:Notify({
			Title = "🎶 Hino do Paraná",
			Content = "O orgulho ecoa pelas montanhas!",
			Duration = 5
		})
	end

	if lower == "/dragao" then
		local m = Instance.new("Message", workspace)
		m.Text = "🐉 Dragão do Paraná acordou do sono eterno!"
		wait(2)
		m:Destroy()
		local fire = Instance.new("ParticleEmitter", game.Players.LocalPlayer.Character.HumanoidRootPart)
		fire.Texture = "rbxassetid://771221224"
		fire.Rate = 200
		fire.Lifetime = NumberRange.new(1)
		fire.Speed = NumberRange.new(3)
		fire.Color = ColorSequence.new(Color3.fromRGB(0,255,0), Color3.fromRGB(255,255,255))
		Rayfield:Notify({
			Title = "🔥 Dragão Supremo",
			Content = "Fogo Verde de Paraná ativado!",
			Duration = 6
		})
	end

	if lower == "/parana" then
		Rayfield:Notify({
			Title = "🟢 Modo Paraná Ativado",
			Content = "Você está pronto pra governar a federação.",
			Duration = 6
		})
		local aura = Instance.new("ParticleEmitter", game.Players.LocalPlayer.Character.HumanoidRootPart)
		aura.Texture = "rbxassetid://4841561571"
		aura.Color = ColorSequence.new(Color3.fromRGB(0, 255, 0))
		aura.Rate = 150
		aura.Speed = NumberRange.new(3)
		aura.Lifetime = NumberRange.new(1)
	end

	if lower == "/zueira" then
		local s = Instance.new("Sound", game:GetService("SoundService"))
		s.SoundId = "rbxassetid://9118823109"
		s.Volume = 10
		s:Play()
		Rayfield:Notify({
			Title = "🤣 Zueira Suprema",
			Content = "ParanaHub no modo loucura total!",
			Duration = 6
		})
	end

	if lower == "/carlosbot" then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[CarlosBOT]: Em que posso te ajudar hoje, Supremo?",
			Color = Color3.fromRGB(85, 255, 0),
			Font = Enum.Font.SourceSansBold,
			TextSize = 20
		})
		Rayfield:Notify({
			Title = "🤖 CarlosBOT Ativado",
			Content = "Pronto pra te ajudar, Carlos!",
			Duration = 4
		})
	end

	-- Atualizando o link do Discord
	if lower == "/discord" then
		Rayfield:Notify({
			Title = "🔗 Discord",
			Content = "Junte-se à nossa comunidade! [Clique aqui](https://discord.gg/ctFXVQ5CPq)",
			Duration = 5
		})
	end
end)
