--[[
    ScoreState Class
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    A simple state used to display the player's score before they
    transition back into the play state. Transitioned to from the
    PlayState when they collide with a Pipe.
]]

ScoreState = Class{__includes = BaseState}

--[[
    When we enter the score state, we expect to receive the score
    from the play state so we know what to render to the State.
]]
function ScoreState:enter(params)
    self.score = params.score

    self.wood = love.graphics.newImage('wood.png')--****importing medals from brawl stars****

    self.wwidth = self.wood:getWidth()--****width for placement****

    self.bronze = love.graphics.newImage('bronze.png')

    self.bwidth = self.bronze:getWidth()


    self.silver = love.graphics.newImage('silver.png')

    self.swidth = self.silver:getWidth()


    self.gold = love.graphics.newImage('gold.png')

    self.gwidth = self.gold:getWidth()


    self.diamond = love.graphics.newImage('diamond.png')

    self.dwidth = self.diamond:getWidth()


    self.crystal = love.graphics.newImage('crystal.png')
    
    self.cwidth = self.crystal:getWidth()
    

    self.master = love.graphics.newImage('master.png')
    

    self.mwidth = self.master:getWidth()
    


    self.star = love.graphics.newImage('star.png')

    self.swidth = self.star:getWidth()
end

function ScoreState:update(dt)
    -- go back to play if enter is pressed
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')
    end
end

function ScoreState:render()
    -- simply render the score to the middle of the screen
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Oof! You lost!', 0, 180, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('you have earned a medal!', 0, 100, VIRTUAL_WIDTH, 'center')
    love .graphics.printf('but...' , 0, 130, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 160, VIRTUAL_WIDTH, 'center')

    love.graphics.printf('Press Enter to Try Again!', 0, 220, VIRTUAL_WIDTH, 'center')


    if self.score <= 3 then

        love.graphics.draw(self.wood,(VIRTUAL_WIDTH/2)-(self.wwidth/2),15)

    
    end



    if self.score <= 10 then
        if self.score >  3 then
    
    

        love.graphics.draw(self.bronze,(VIRTUAL_WIDTH/2)-(self.bwidth/2),15)

        end

    end

     

    if self.score <= 15 then
        if self.score >  10 then

        love.graphics.draw(self.silver,(VIRTUAL_WIDTH/2)-(self.swidth/2),15)

        end
    end

    if self.score <= 20 then
        if self.score >  15 then
        
            love.graphics.draw(self.gold,(VIRTUAL_WIDTH/2)-(self.gwidth/2),15)
        end
    end


    if self.score <= 25 then
        if self.score >  20 then
        
            love.graphics.draw(self.diamond,(VIRTUAL_WIDTH/2)-(self.dwidth/2),15)
        end
    end


    if self.score <= 30 then
        if self.score >  25 then
        
            love.graphics.draw(self.crystal,(VIRTUAL_WIDTH/2)-(self.cwidth/2),15)
        end
    end


    if self.score <= 35 then
        if self.score >  30 then

            love.graphics.draw(self.master,(VIRTUAL_WIDTH/2)-(self.mwidth/2),15)
        end
    end


    if self.score >  35 then
        love.graphics.draw(self.star,(VIRTUAL_WIDTH/2)-(self.swidth/2),15)
    end
end

   -- 0-3 = wood
   --3-10 = bronze
   --10-15 = silver
   --15-20 = golden
   --20-25 = diamond
   --25-30 = crystal
   --30-35 = master
   --35 and above = star
