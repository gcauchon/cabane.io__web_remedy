#!/bin/sh
release_ctl eval --mfa "Remedy.ReleaseTasks.migrate/1" --argv -- "$@"
