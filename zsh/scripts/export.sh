#!/bin/bash

export CR_PAT="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"
export DOTFILES="$HOME/Workspace/dotfiles"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
export GOPATH=$(go env GOPATH)
export GOROOT=/usr/local/go
export GOPRIVATE=github.com/mailgun/*
export GONOPROXY=github.com/mailgun/*
export PATH=$HOME/bin:/usr/local/bin:$GOPATH:$GOPATH/bin:$GOROOT/bin:$GOROOT/bin/go:$PATH
PATH=$(pyenv root)/shims:$PATH
