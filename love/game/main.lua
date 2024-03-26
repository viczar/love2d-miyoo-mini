
miyoo = require("miyoo")
pos = {x = 100, y = 100}
lastKeyPressed = ""

function love.load()
    love.graphics.setBackgroundColor(0.55, 0.784, 1, 1)
    local customFont = love.graphics.newFont("assets/KleeOne-SemiBold.ttf", 32)
    love.graphics.setFont(customFont)

    face = love.graphics.newImage("assets/face.png")
    face_normal = face
    face_open = love.graphics.newImage("assets/face_01.png")
end

function love.update(dt)
    if love.keyboard.isDown('left') then
        pos.x = pos.x - 100 * dt
    end
    if love.keyboard.isDown('right') then
        pos.x = pos.x + 100 * dt
    end
    if love.keyboard.isDown('up') then
        pos.y = pos.y - 100 * dt
    end
    if love.keyboard.isDown('down') then
        pos.y = pos.y + 100 * dt
    end

end

function love.keypressed(key)
    if miyoo.reverse_keys[key] then
        lastKeyPressed = miyoo.reverse_keys[key]
    end
    if key == miyoo.keys.a or key == miyoo.keys.b then
        face = face_open
    end
    if key == miyoo.keys.x or key == miyoo.keys.y then
        face = face_normal
    end
end


function love.draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(face, pos.x, pos.y)

    love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 420)
    love.graphics.print("Last key pressed: " .. lastKeyPressed, 10, 10)
end
