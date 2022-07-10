---@class imgui
imgui = {}

---Draws a (?), in which displays a text when hovered.
---
--- ### Example
---
---```
---constellation.windows.overlay.imgui.help( "This button does blah blah" )
---```
---@param text string The text to display.
---@type fun(text: string)
imgui.help = function(text)end

---ImGui::SetNextWindowPos
---
--- ### Example
---
---```
---
---```
---@type fun(x: number, y: number)
imgui.set_next_position = function()end


---ImGui::SetNextWindowSize
---
--- ### Example
---
---```
---
---```
---@type fun(x: number, y: number)
imgui.set_next_size = function()end


---This function displays an image within an ImGui window. The image must have been created through constellation.windows.overlay.add_image.
---
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
---@param image_id number The image ID.
---@param width number The width of the image.
---@param height number The height of the image.
---@type fun(image_id: number, width: number, height: number)
imgui.image = function(image_id, width, height)end


---ImGui::BeginMenuBar
---
--- ### Example
---
---```
---
---```
---@type fun(): boolean
imgui.menu_bar = function()end


---ImGui::BeginMenu
---
--- ### Example
---
---```
---
---```
---@type fun(): boolean
imgui.menu = function()end


---ImGui::MenuItem
---
--- ### Example
---
---```
---
---```
---@param label string The label of the menu item.
---@param shortcut string The shortcut of the menu item.
---@type fun(label: string, shortcut: string): boolean
imgui.menu_item = function(label, shortcut)end


---ImGui::EndMenu
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.end_menu = function()end


---ImGui::EndMenuBar
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.end_menu_bar = function()end


--- ImGui::ShowStyleEditor
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.style_editor = function()end


---ImGui::Begin
---
--- ### Example
---
---```
---
---```
---@param name string The name of the window.
---@param ImGuiWindowFlags number The flags of the window.
---@type fun(name: string, ImGuiWindowFlags: number)
imgui.window = function(name, ImGuiWindowFlags)end


---ImGui::End
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.end_window = function()end


---ImGui::SetCursorPos
---
--- ### Example
---
---```
---
---```
---@param x number The x position.
---@param y number The y position.
---@type fun(x: number, y: number)
imgui.set = function(x, y)end


---ImGui::GetCursorPos
---
--- ### Example
---
---```
---
---```
---@type fun(): number, number
imgui.get = function()end


---This creates a combo box with ImGui::Combo that contains virtual keys.
---
--- ### Example
---
---```
---constellation.windows.overlay.imgui.key( "Humanizer Key", "humanizer_key" )
---```
---@param label string The label of the combo box.
---@param fantasyvar string The name of the variable to store the key in.
---@type fun(label: string, fantasyvar: string)
imgui.key = function(label, fantasyvar)end


---ImGui::TextColored
---
--- ### Example
---
---```
---
---```
---@param text string The text to display.
---@param r number The red value.
---@param g number The green value.
---@param b number The blue value.
---@param a number The alpha value.
---@type fun(text: string, r: number, g: number, b: number, a: number)
imgui.text = function(text, r, g, b, a)end


---ImGui::Button
---
--- ### Example
---
---```
---
---```
---@param label string The label of the button.
---@param width number The width of the button.
---@param height number The height of the button.
---@type fun(label: string, width: number, height: number)
imgui.button = function(label, width, height)end


---ImGui::SameLine
---
--- ### Example
---
---```
---
---```
---@param offset_from_x number The offset from the x position.
---@param spacing number The spacing between the x position and the next element.
---@type fun(offset_from_x: number, spacing: number)
imgui.same_line = function(offset_from_x, spacing)end


---ImGui::Combo
---
--- ### Example
---
---```
---constellation.windows.overlay.imgui.combo( "Favorite Color", "fav_color_var", "Red|Green|Yellow|Blue|Purple" )
---```
---@param label string The label of the combo box.
---@param fantasyvar string The variable that will be set to the selected item.
---@param items_separated_by_pipe string The items of the combo box, separated by "|"
---@type fun(label: string, fantasyvar: string, items_separated_by_pipe: string)
imgui.combo = function(label, fantasyvar, items_separated_by_pipe)end


---ImGui::ListBox
---
--- ### Example
---
---```
---constellation.windows.overlay.imgui.listbox( "Favorite Color", "fav_color_var", "Red|Green|Yellow|Blue|Purple", 30 )
---```
---@param label string The label of the combo box.
---@param fantasyvar string The variable that will be set to the selected item.
---@param items_separated_by_pipe string The items of the combo box, separated by "|"
---@param height number The height of the list box.
---@type fun(label: string, fantasyvar: string, items_separated_by_pipe: string, height: number)
imgui.listbox = function(label, fantasyvar, items_separated_by_pipe, height)end


---ImGui::InputTextMultiline
---
--- ### Example
---
---```
---
---```
---@param label string The label of the text box.
---@param width number The width of the text box.
---@param height number The height of the text box.
---@param fantasyvar string The variable that will be set to the text.
---@param ImGuiInputTextFlags number The flags of the text box.
---@type fun(label: string, width: number, height: number, fantasyvar: string, ImGuiInputTextFlags: number): boolean
imgui.textarea = function(label, width, height, fantasyvar, ImGuiInputTextFlags)end


---ImGui::PushItemWidth
---
--- ### Example
---
---```
---
---```
---@param item_width number The width of the item.
---@type fun(item_width: number)
imgui.push_width = function(item_width)end


---ImGui::PopItemWidth
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.pop_width = function()end


---ImGui::InputText
---
--- ### Example
---
---```
---
---```
---@param label string The label of the text box.
---@param fantasyvar string The variable that will be set to the text.
---@param ImGuiInputTextFlags number The flags of the text box.
---@type fun(label: string, fantasyvar: string, ImGuiInputTextFlags: number)
imgui.inputtext = function(label, fantasyvar, ImGuiInputTextFlags)end


---ImGui::CheckBox
---
--- ### Example
---
---```
---
---```
---@param label string The label of the check box.
---@param fantasyvar string The variable that will be set to the checked state.
---@type fun(label: string, fantasyvar: string)
imgui.checkbox = function(label, fantasyvar)end


---ImGui::SliderInt
---
--- ### Example
---
---```
---
---```
---@type fun(label: string, fantasyvar: string, min: number, max: number)
imgui.slider = function()end


---ImGui::InputInt
---
--- ### Example
---
---```
---
---```
---@type fun(label: string, fantasyvar: string)
imgui.input_slider = function()end


---ImGui::InputFloat
---
--- ### Example
---
---```
---
---```
---@type fun(label: string, fantasyvar: string)
imgui.input_sliderf = function()end


---ImGui::SliderFloat
---
--- ### Example
---
---```
---
---```
---@type fun(label: string, fantasyvar: string, min: number, max: number, step: string)
imgui.sliderf = function()end


---ImGui::ColorEdit3
---
--- ### Example
---
---```
---
---```
---@type fun(label: string, fantasyvar: string)
imgui.color = function()end


---ImGui::Separator
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.separator = function()end


---ImGui::BeginTabBar
---
--- ### Example
---
---```
---
---```
---@type fun(label: string)
imgui.tabbar = function()end


---ImGui::EndTabBar
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.endtabbar = function()end


---ImGui::TabItem
---
--- ### Example
---
---```
---
---```
---@type fun(label: string): boolean
imgui.tabitem = function()end


---ImGui::EndTabItem
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.endtabitem = function()end


---ImGui::IsItemHovered
---
--- ### Example
---
---```
---
---```
---@type fun(): boolean
imgui.is_hovered = function()end


---This function calls ImGui::GetStyle and allows you to set the style options for your ImGui creation. Parameters vary depending on how much arguments the style accepts. See CMF for an example.
---
--- ### Example
---
---```
---
---```
---@type fun(string: string, number: number, number2: number, number3: number, number4: number, number5: number)
imgui.style = function()end


---This function is different from constellation.windows.overlay.add_font. This loads a font into ImGui's database, not the overlay module. Therefore, if you were to add the same font with both functions, you will get a different font id. The fonts loaded from this function must be in constellation\resources\. This function eventually calls AddFontFromFileTTF in ImGui.
---
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
---@param name_of_ttf_font string The name of the TTF font.
---@param size number The size of the font.
---@return number The font id.
---@type fun(name_of_ttf_font: string, size: number): number
imgui.add_font = function(name_of_ttf_font, size)end


---ImGui::PushFont
---
--- ### Example
---
---```
---
---```
---@type fun(font_id: number)
imgui.push_font = function()end


---ImGui::PopFont
---
--- ### Example
---
---```
---
---```
---@type fun()
imgui.pop_font = function()end


---This will create a file browser. This is Constellation's modified version of Lime2D File Dialog ImGui Extension.
---
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
---@param path string The path to browse.
---@param option number The option to use (File or folder) [ImGuiFileBrowser_SelectFile, ImGuiFileBrowser_SelectFolder].
---@return string The path to the selected file/folder.
---@type fun(path: string, option: number): string
imgui.file_browser = function(path, option)end