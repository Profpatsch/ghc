if config.cleanup:
   cleanup = 'CLEANUP=1'
else:
   cleanup = 'CLEANUP=0'

test('cabal03',
     [extra_files(['Setup.lhs', 'p/', 'q/', 'r/']),
     js_broken(22349)],
     run_command,
     ['$MAKE -s --no-print-directory cabal03 ' + cleanup])
