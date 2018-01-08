#!/usr/bin/env bash
sudo lsof -n | perl -pe '$x = <>; while(<>) { ($cmd, $pid, $rest) = split(/\s+/); $cmds{$pid} = $cmd; $pids{$pid}++;} while( ($key, $val) = each %pids) { if ($val > $max) { $max = $val; $maxpid = $key; } } print "pid: $maxpid ($cmds{$maxpid}) has the most ($max) filedescriptors \n";'
