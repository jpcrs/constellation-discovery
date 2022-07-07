---@type imgui
imgui = {}

---Draws a (?), in which displays a text when hovered.
---
---@type fun(text: string)
---@param text string The text to display.
---.
--- ### Example
---
---```
---constellation.windows.overlay.imgui.help( "This button does blah blah" )
---```
imgui.help = function()end

---ImGui::SetNextWindowPos
---
---@type fun(x: number, y: number)
---.
--- ### Example
---
---```
---
---```
imgui.set_next_position = function()end


---ImGui::SetNextWindowSize
---
---@type fun(x: number, y: number)
---.
--- ### Example
---
---```
---
---```
imgui.set_next_size = function()end


---This function displays an image within an ImGui window. The image must have been created through constellation.windows.overlay.add_image.
---
---@type fun(image_id: number, width: number, height: number)
---@param image_id number The image ID.
---@param width number The width of the image.
---@param height number The height of the image.
---.
--- ### Example
---
---```
---local test_image = nil
---function test.Initialize()
---    test_image = constellation.windows.overlay.add_image( "sleeping cat.jpg" )
---end
---function test.OnOverlayRender()
---    constellation.windows.overlay.imgui.window( "Cat Window", bit.bor( ImGuiWindowFlags_NoCollapse, ImGuiWindowFlags_NoScrollbar ) )
---    constellation.windows.overlay.imgui.image( test_image, 256, 256 )
---    constellation.windows.overlay.imgui.end_window( )
---end
---```
imgui.image = function()end


---ImGui::BeginMenuBar
---
---@type fun(): boolean
---.
--- ### Example
---
---```
---
---```
imgui.menu_bar = function()end


---ImGui::BeginMenu
---
---@type fun(): boolean
---.
--- ### Example
---
---```
---
---```
imgui.menu = function()end


---ImGui::MenuItem
---
---@type fun(label: string, shortcut: string): boolean
---.
--- ### Example
---
---```
---
---```
imgui.menu_item = function()end


---ImGui::EndMenu
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.end_menu = function()end


---ImGui::EndMenuBar
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.end_menu_bar = function()end


--- ImGui::ShowStyleEditor
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.style_editor = function()end


---ImGui::Begin
---
---@type fun(name: string, ImGuiWindowFlags: number)
---.
--- ### Example
---
---```
---
---```
imgui.window = function()end


---ImGui::End
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.end_window = function()end


---ImGui::SetCursorPos
---
---@type fun(x: number, y: number)
---.
--- ### Example
---
---```
---
---```
imgui.set = function()end


---ImGui::GetCursorPos
---
---@type fun(): number, number
---.
--- ### Example
---
---```
---
---```
imgui.get = function()end


---This creates a combo box with ImGui::Combo that contains virtual keys.
---
---@type fun(label: string, fantasyvar: string)
---.
--- ### Example
---
---```
---constellation.windows.overlay.imgui.key( "Humanizer Key", "humanizer_key" )
---```
imgui.key = function()end


---ImGui::TextColored
---
---@type fun(text: string, r: number, g: number, b: number, a: number)
---.
--- ### Example
---
---```
---
---```
imgui.text = function()end


---ImGui::Button
---
---@type fun(label: string, width: number, height: number)
---.
--- ### Example
---
---```
---
---```
imgui.button = function()end


---ImGui::SameLine
---
---@type fun(offset_from_x: number, spacing: number)
---.
--- ### Example
---
---```
---
---```
imgui.same_line = function()end


---ImGui::Combo
---
---@type fun(label: string, fantasyvar: string, items_separated_by_pipe: string)
---@param label string The label of the combo box.
---@param fantasyvar string The variable that will be set to the selected item.
---@param items_separated_by_pipe string The items of the combo box, separated by "|"
---.
--- ### Example
---
---```
---constellation.windows.overlay.imgui.combo( "Favorite Color", "fav_color_var", "Red|Green|Yellow|Blue|Purple" )
---```
imgui.combo = function()end


---ImGui::ListBox
---
---@type fun(label: string, fantasyvar: string, items_separated_by_pipe: string, height: number)
---@param label string The label of the combo box.
---@param fantasyvar string The variable that will be set to the selected item.
---@param items_separated_by_pipe string The items of the combo box, separated by "|"
---@param height number The height of the list box.
---.
--- ### Example
---
---```
---constellation.windows.overlay.imgui.listbox( "Favorite Color", "fav_color_var", "Red|Green|Yellow|Blue|Purple", 30 )
---```
imgui.listbox = function()end


---ImGui::InputTextMultiline
---
---@type fun(label: string, width: number, height: number, fantasyvar: string, ImGuiInputTextFlags: number): boolean
---.
--- ### Example
---
---```
---
---```
imgui.textarea = function()end


---ImGui::PushItemWidth
---
---@type fun(item_width: number)
---.
--- ### Example
---
---```
---
---```
imgui.push_width = function()end


---ImGui::PopItemWidth
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.pop_width = function()end


---ImGui::InputText
---
---@type fun(label: string, fantasyvar: string, ImGuiInputTextFlags: number)
---.
--- ### Example
---
---```
---
---```
imgui.inputtext = function()end


---ImGui::CheckBox
---
---@type fun(label: string, fantasyvar: string)
---.
--- ### Example
---
---```
---
---```
imgui.checkbox = function()end


---ImGui::SliderInt
---
---@type fun(label: string, fantasyvar: string, min: number, max: number)
---.
--- ### Example
---
---```
---
---```
imgui.slider = function()end


---ImGui::InputInt
---
---@type fun(label: string, fantasyvar: string)
---.
--- ### Example
---
---```
---
---```
imgui.input_slider = function()end


---ImGui::InputFloat
---
---@type fun(label: string, fantasyvar: string)
---.
--- ### Example
---
---```
---
---```
imgui.input_sliderf = function()end


---ImGui::SliderFloat
---
---@type fun(label: string, fantasyvar: string, min: number, max: number, step: string)
---.
--- ### Example
---
---```
---
---```
imgui.sliderf = function()end


---ImGui::ColorEdit3
---
---@type fun(label: string, fantasyvar: string)
---.
--- ### Example
---
---```
---
---```
imgui.color = function()end


---ImGui::Separator
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.separator = function()end


---ImGui::BeginTabBar
---
---@type fun(label: string)
---.
--- ### Example
---
---```
---
---```
imgui.tabbar = function()end


---ImGui::EndTabBar
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.endtabbar = function()end


---ImGui::TabItem
---
---@type fun(label: string): boolean
---.
--- ### Example
---
---```
---
---```
imgui.tabitem = function()end


---ImGui::EndTabItem
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.endtabitem = function()end


---ImGui::IsItemHovered
---
---@type fun(): boolean
---.
--- ### Example
---
---```
---
---```
imgui.is_hovered = function()end


---This function calls ImGui::GetStyle and allows you to set the style options for your ImGui creation. Parameters vary depending on how much arguments the style accepts. See CMF for an example.
---
---@type fun(string: string, number: number, number2: number, number3: number, number4: number, number5: number)
---.
--- ### Example
---
---```
---
---```
imgui.style = function()end


---This function is different from constellation.windows.overlay.add_font. This loads a font into ImGui's database, not the overlay module. Therefore, if you were to add the same font with both functions, you will get a different font id. The fonts loaded from this function must be in constellation\resources\. This function eventually calls AddFontFromFileTTF in ImGui.
---
---@type fun(name_of_ttf_font: string, size: number): number
---@param name_of_ttf_font string The name of the TTF font.
---@param size number The size of the font.
---@return number The font id.
---.
--- ### Example
---
---```
---local my_font = nil
---function test.Initialize()
---    my_font = constellation.windows.overlay.add_font( "coolfont", 24 )
---end
---function test.OnOverlayRender()
---    constellation.windows.overlay.imgui.push_font( my_font )
---    constellation.windows.overlay.imgui.text( "Hello World", 255, 0, 0, 255 )
---    constellation.windows.overlay.imgui.pop_font( )
---end
---```
imgui.add_font = function()end


---ImGui::PushFont
---
---@type fun(font_id: number)
---.
--- ### Example
---
---```
---
---```
imgui.push_font = function()end


---ImGui::PopFont
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
imgui.pop_font = function()end


---This will create a file browser. This is Constellation's modified version of Lime2D File Dialog ImGui Extension.
---
---@type fun(path: string, option: number): string
---@param path string The path to browse.
---@param option number The option to use (File or folder) [ImGuiFileBrowser_SelectFile, ImGuiFileBrowser_SelectFolder].
---@return string The path to the selected file/folder.
---.
--- ### Example
---
---```
----- draw file browser
---local selected_object = constellation.windows.overlay.imgui.file_browser( "C:\\Windows", ImGuiFileBrowser_SelectFolder )
---
----- folder/file wasn't selected. [ImGuiFileBrowser_SelectFolder] in this case.
---if selected_object == nil then return end
---
----- create notification showing the file/folder we selected.
---constellation.windows.overlay.notification( selected_object, 5000 )
---```
imgui.file_browser = function()end