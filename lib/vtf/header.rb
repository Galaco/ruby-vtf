# Vtf
module Vtf
  # Consistent Vtf header across all versions
  class HeaderCommon
    attr_accessor :signature, :version, :headersize, :width, :height, :flags,
                  :frames, :firstframe, :reflectivity, :bumpmapscale,
                  :highresimageformat, :mipmapcount, :lowresimageformat,
                  :lowresimagewidth, :lowresimageheight
  end

  class Header < HeaderCommon
    def initialize () end
  end
end
