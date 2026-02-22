local M = {}

M.quotes = {
  -- Peep Show
  "Socks before or after trousers, but never socks before pants. That’s the rule. Makes a man look scary, like a chicken. (Mark Corrigan)",
  "People like Coldplay and voted for the Nazis, you can’t trust people, Jez. (Super Hans)",
  "’m not marrying out of spite, I’m marrying out of fear. There’s a very big difference. (Mark Corrigan)",
  "Is this a terrible idea? It can’t be, it’s in a film. They wouldn’t put a terrible idea in a film, they’d get sued. (Jeremy Usborne)",
  "The secret ingredient is crime. (Super Hans)",
  "I'm not sick, but I'm not well. And it's not like I'm gonna get well. (Mark Corrigan)",
  "Butter the toast. Eat the toast. Shit the toast. God, life's relentless. (Mark Corrigan)",
  "That wasn't very Christmassy. (Mark Corrigan)",
  "Minimal water damage. (Jeremy Usborne)",
  "This crack is really moreish. (Super Hans)",
  "You are a smelly pirate hooker. (Jeremy Usborne)",
  "Four naan, Jeremy? Four? That's insane. (Mark Corrigan)",

  -- Spaceballs
  "I've Lost The Bleeps, I've Lost The Sweeps, And I've Lost The Creeps. (Radar Technician)",
  "Look, Your Highness, It's Not That We're Afraid. Far From It. It's Just That We Got This Thing About Death. It's Not Us. (Barf)",
  "I Am Your Father's Brother's Nephew's Cousin's Former Roommate. (Dark Helmet)",
  "You Listen! On This Ship, You're To Refer To Me As 'Idiot,' Not 'You Captain.' I Mean... You Know What I Mean. (Lone Starr)",
  "Evil will always triumph, because good is dumb. (Dark Helmet)",
  "I see your Schwartz is as big as mine. (Dark Helmet)",
  "I'm surrounded by assholes! (Dark Helmet)",
  "What is it? (Colonel Sandurz)",
  "We ain't found shit! (Tuvok)",

  -- It's Always Sunny in Philadelphia
  "Cat in the wall. Now you’re talking my language. (Charlie Kelly)",
  "Science is a liar sometimes. (Mac)",
  "I’m not gonna be buried in a grave. When I’m dead, just throw me in the trash. (Frank Reynolds)",
  "What’s up, bitches! I’m a man cheetah! Wanna do something with this? (Frank Reynolds)",
  "Do I look like I need to be on a diet? I'm cultivating mass! (Mac)",
  "Through God all things are possible, so jot that down. (Mac)",
  "Wildcard, bitches! YEE-HAW! (Charlie Kelly)",
  "Can I offer you a nice egg in this trying time? (Frank Reynolds)",
  "I'm playing both sides so that I always come out on top. (Mac)",
  "You haven't thought of the smell, you bitch! (Dennis Reynolds)",
  "Because of the implication. (Dennis Reynolds)",
  "This guy being the president, it's like there's a horse loose in a hospital.",

  -- Archer
  "I swear to god I had something for this. (Sterling Archer)",
  "Introspection is the enemy of happiness. (Sterling Archer)",
  "I have a bleached asshole. (Sterling Archer)",
  "Danger zone! (Sterling Archer)",
  "Do you want ants? Because that's how you get ants! (Sterling Archer)",
  "You're not my supervisor! (Cheryl Tunt)",

  -- Trailer Park Boys
  "Water under the fridge.",
  "Worst case Ontario. (Ricky)",
  "It's not rocket appliances. (Ricky)",
  "I'm not the kind of person to say atodaso, but you know what? Atodaso. (Ricky)",
  "I am the liquor. (Jim Lahey)",
  "The shit winds are blowin', Randy. (Jim Lahey)",
  "What comes around is all around. (Ricky)",

  -- The Simpsons
  "I, for one, welcome our new insect overlords. (Kent Brockman)",
  "Trying is the first step toward failure. (Homer Simpson)",
  "You'll have to speak up, I'm wearing a towel. (Homer Simpson)",
  "Me fail English? That's unpossible. (Ralph Wiggum)",
  "Everything's coming up Milhouse! (Milhouse Van Houten)",
  "Shoplifting is a victimless crime, like punching someone in the dark. (Nelson Muntz)",

  -- Woody Allen
  "I’m not afraid of death; I just don’t want to be there when it happens. (Woody Allen)",
  "I can resist everything except temptation. (Woody Allen)",
  "The heart wants what it wants. (Woody Allen)",
  "My brain? It's my second-favorite organ. (Woody Allen)",
  "Life is full of misery, loneliness, and suffering — and it’s all over much too soon. (Woody Allen)",

  -- Family Guy
  "It insists upon itself. (Peter Griffin)",
  "Road house. (Peter Griffin)",
  "Giggity. (Glenn Quagmire)",
  "Shut up, Meg. (Peter Griffin)",
  "Victory is mine! (Stewie Griffin)",
  "I find this meatloaf shallow and pedantic. (Peter Griffin)",

  -- Monty Python
  "He's not the Messiah. He's a very naughty boy! (Brian's Mother)",
  "Always look on the bright side of life. (Crucified Man)",
  "Bring out your dead! (Dead Collector)",
  "I fart in your general direction! (French Taunter)",
  "Your mother was a hamster and your father smelt of elderberries! (French Taunter)",
  "It's just a flesh wound. (Black Knight)",
  "We are the Knights Who Say... Ni! (Knight of Ni)",
  "Nobody expects the Spanish Inquisition! (Cardinal Ximénez)",
  "Strange women lying in ponds distributing swords is no basis for a system of government. (Dennis)",
  "And now for something completely different. (John Cleese)",
}

local function wrap_text(text, width)
  local lines = {}
  local current = ""

  for word in text:gmatch("%S+") do
    if current == "" then
      current = word
    elseif (#current + 1 + #word) <= width then
      current = current .. " " .. word
    else
      table.insert(lines, current)
      current = word
    end
  end

  if current ~= "" then
    table.insert(lines, current)
  end

  return lines
end

---Returns a random quote as a list of wrapped lines (ready for alpha text sections).
---If called before a window exists, it falls back to a safe default width.
---@param padding number|nil Amount to subtract from window width (default 10)
---@param min_width number|nil Minimum wrapping width (default 20)
function M.random_wrapped(padding, min_width)
  padding = padding or 10
  min_width = min_width or 20

  local quote = M.quotes[math.random(#M.quotes)]

  local ok, win = pcall(vim.api.nvim_get_current_win)
  local width = 80
  if ok and win and vim.api.nvim_win_is_valid(win) then
    width = vim.api.nvim_win_get_width(win)
  end

  width = math.max(min_width, width - padding)
  return wrap_text(quote, width)
end

return M
