# I use this as a test runner, it runs in another tmux pane.
# Checking to see if any of the files have changed just means that
# it doesn't keep blinking on every refresh.
#
# Install it as:
# ~/.config/fish/functions/rspec_loop.fish
#
# .. assuming you're using the fish shell.
#
function rspec_loop --description "Run 'rspec test' in a loop, triggered by file changes"
  #
  #
  function _files_mtime
    echo (stat --printf '{%n, %Y}' (find -name '*.rb'))
  end

  # Set a sleep default
  if test -n "$argv"
    set -g loop_rspec_test_sleep $argv
  else
    set -g loop_rspec_test_sleep 5
  end

  # Start the main loop
  while true
    if test -n (echo $loop_rspec_test_files)
      if test $loop_rspec_test_files != (_files_mtime)
        clear
        rspec
        set -g loop_rspec_test_files (_files_mtime)
      end
    else
      set -g loop_rspec_test_files (_files_mtime)
      clear
      rspec
    end
    sleep (echo $loop_rspec_test_sleep)
  end
    
end
