placeholder :channel do
  match /(output|stderr|stdout)/ do |channel|
    channel
  end
end

placeholder :command do
  match /`([^`]+)`/ do |command|
    command
  end
end

placeholder :with_optional_timeout do
  match /\sfor up to (\d+) seconds?/ do |seconds|
    seconds.to_i
  end

  match // do
    nil
  end
end

placeholder :outcome do
  match /should not/ do
    false
  end

  match /should/ do
    true
  end
end

placeholder :is_regex do
  match /regex/ do
    true
  end
end
