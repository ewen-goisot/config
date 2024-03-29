
-- Cycle rotate 360

--local function cycle_video_rotate(dir)
	--local c = mp.get_property_number("video-rotate")
	--c = (c + 90 * dir) % 360
	--mp.set_property_number("video-rotate", c)
	--mp.osd_message("Rotate: " ..c)
--end

--mp.add_forced_key_binding("b", "Cycle_Video_Rotate",        function() return cycle_video_rotate(-1) end)
--mp.add_forced_key_binding("B", "Cycle_Video_Rotate_revert", function() return cycle_video_rotate( 1) end)


-- my-i3wm-like double toggle

--local function toggle_osd(dir)
	--local c = mp.get_property_number("osd-level")
	--c = (3 - c + dir) % 4
	--mp.set_property_number("osd-level", c)
	--mp.osd_message('')
--end

--mp.add_forced_key_binding(".", "Toggle_osd_vert", function() return toggle_osd(2) end)
--mp.add_forced_key_binding(",", "Toggle_osd_hori", function() return toggle_osd(0) end)


-- Print playlist

local function basename(file)
	--local name = string.gsub(file, "(.*/)(.*)", "%2")
	--local name = string.gsub(name, "(.*)(%..*)", "%1")
	local name = file:gsub("(.*/)(.*)", "%2")
	local name = name:gsub("(.*)(%..*)", "%1")
	return name
end

function os.capture(cmd)
	local f = assert(io.popen(cmd, 'r'))
	local s = assert(f:read('*a'))
	f:close()
	return s
end

function playlist_print()
	local max = mp.get_property_native("playlist-count", 0)
	local pos = mp.get_property_native("playlist-pos", 0)
	local playlist = ""
	for i = 0, max-1 do
		local title = mp.get_property("playlist/"..i.."/title")
		if not title then title = basename(mp.get_property("playlist/"..i.."/filename")) end
		--playlist = playlist .. (i>0 and "\n" or "") .. (pos==i and "-> " or "   ") ..(i+1).. "\t" ..title
		playlist = playlist .. (i>0 and "\n" or "") .. "   " ..(i+1).. "\t" ..title
	end
	return playlist
end

function playlist_rofi()
	local pos = mp.get_property_native("playlist-pos", 0)
	local s = os.capture('echo "' ..playlist_print().. '" | rofi -dmenu -no-show-icons -p "goto" -i -selected-row ' ..pos.. ' -a ' ..pos)
	if s == '' then return end
	s = s:gsub("^(...)(%d+)(\t.*)", "%2")
	return tonumber(s) - 1
end

function playlist_goto()
	local c = playlist_rofi()
	mp.set_property_native("playlist-pos", c)
end

function playlist_move()
	local pos = mp.get_property_native("playlist-pos", 0)
	local c = playlist_rofi()
	if c == nil then c=pos end
	if c >= pos then c=c+1 end -- '>' and '>=' are both correct
	mp.command("playlist-move "..pos.." "..c)
end

function playlist_rand()
	local max = mp.get_property_native("playlist-count", 0)
	local pos = mp.get_property_native("playlist-pos", 0)
	c = math.random(0, max-2)
	if c>=pos then c=c+1 end
	mp.set_property_native("playlist-pos", c)
	os.execute("sleep .1")
	mp.command("show-text ${playlist}")
end

mp.add_forced_key_binding("d", "playlist_goto", playlist_goto)
mp.add_forced_key_binding("v", "playlist_move", playlist_move)
mp.add_forced_key_binding("?", "playlist_rand", playlist_rand)


-- chapter with better display

function chapter_change(dir)
	mp.command("no-osd add chapter "..dir)
	os.execute("sleep .1")
	mp.command("show-text ${chapter-list}")
end
mp.add_forced_key_binding("è", "chapter_change_p", function() return chapter_change(-1) end)
mp.add_forced_key_binding("o", "chapter_change_n", function() return chapter_change(1) end)


-- Vim-like marks

marks = {}       --time only
marks_local = {} --time and playlist

function save_mark()
	local tim = mp.get_property_native("time-pos", 0)
	local s = os.capture('i3-input -l 1 -P "set mark:" | tail -n 1 | sed "s/^.*= //" '):gsub("\n", "")
	marks[s] = tim
end

-- warning: doesn't track playlist_move
function save_mark_local()
	local tim = mp.get_property_native("time-pos", 0)
	local pos = mp.get_property_native("playlist-pos", 0)
	local s = os.capture('i3-input -l 1 -P "set mark:" | tail -n 1 | sed "s/^.*= //" '):gsub("\n", "")
	marks[s] = {tim, pos}
end

function load_mark()
	local s = os.capture('i3-input -l 1 -P "load mark:" | tail -n 1 | sed "s/^.*= //" '):gsub("\n", "")
	local tim = marks[s]
	mp.set_property_native("time-pos", tim)
end

function load_mark_local()
	local s = os.capture('i3-input -l 1 -P "load mark:" | tail -n 1 | sed "s/^.*= //" '):gsub("\n", "")
	local tim = marks[s][0]
	local pos = marks[s][1]
	mp.set_property_native("time-pos", tim)
	mp.set_property_native("playlist-pos", pos)
end

mp.add_forced_key_binding("@", "save_mark", save_mark)
mp.add_forced_key_binding("_", "load_mark", load_mark)
mp.add_forced_key_binding("≠", "save_mark_local", save_mark_local)
mp.add_forced_key_binding("±", "load_mark_local", load_mark_local)
--mp.add_forced_key_binding(" ̊", "iczfoo", iczfoo)

-- video-pan modion, depending on zoom level

function pan_move_x(dir)
	local zom = mp.get_property_native("video-zoom", 0) -- zoom level
	local c = dir / 2^zom
	mp.command("add video-pan-x "..c)
end

function pan_move_y(dir)
	local zom = mp.get_property_native("video-zoom", 0) -- zoom level
	local c = dir / 2^zom
	mp.command("add video-pan-y "..c)
end

mp.add_forced_key_binding("T", "pan_move_x", function() return pan_move_x( 0.1) end)
mp.add_forced_key_binding("N", "pan_back_x", function() return pan_move_x(-0.1) end)
mp.add_forced_key_binding("M", "pan_move_y", function() return pan_move_y( 0.1) end)
mp.add_forced_key_binding("S", "pan_back_y", function() return pan_move_y(-0.1) end)
