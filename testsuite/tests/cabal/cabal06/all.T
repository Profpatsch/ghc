if config.cleanup:
   cleanup = 'CLEANUP=1'
else:
   cleanup = 'CLEANUP=0'

test('cabal06',
     [extra_files(['Setup.hs', 'p-1.0/', 'p-1.1/', 'q/', 'r/']),
     js_broken(22349)],
     run_command,
     ['$MAKE -s --no-print-directory cabal06 ' + cleanup])
