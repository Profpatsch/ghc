if config.cleanup:
   cleanup = 'CLEANUP=1'
else:
   cleanup = 'CLEANUP=0'

test('bkpcabal03',
     [extra_files(['asig1', 'asig2', 'bkpcabal03.cabal.in1', 'bkpcabal03.cabal.in2', 'Setup.hs', 'Mod.hs']),
      js_broken(22349)],
     run_command,
     ['$MAKE -s --no-print-directory bkpcabal03 ' + cleanup])
