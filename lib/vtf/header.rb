# Vtf
module Vtf
  # Consistent Vtf header across all versions
  class Header
    attr_accessor :signature, :version, :headersize, :width, :height, :flags,
                  :frames, :firstframe, :reflectivity, :bumpmapscale,
                  :highresimageformat, :mipmapcount, :lowresimageformat,
                  :lowresimagewidth, :lowresimageheight, :depth, :numresource

    def initialize () end
  end
end
