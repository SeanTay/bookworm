class ReadsController < ApplicationController

def index
  @reads = Read.all
end
