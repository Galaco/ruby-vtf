module Vtf
  class Reader
    def initialize () end

    # data is a string
    def read(data)
      header = readHeader(data)

      result = Vtf::Vtf.new
      result.header = header

      return result
    end

    def readHeader(data)
      signature = data[0, 4]
      version = data[4, 8]
      headerSize = data[12, 4]
      width = data[16, 2]
      height = data[18, 2]
      flags = data[20, 4]
      frames = data[24, 2]
      firstFrame = data[26, 2]
      # skip 4
      reflectivity = data[32, 12]
      # skip 4
      bumpmapscale = data[48, 4]
      highResImageFormat = data[52, 4]
      mipMapCount = data[56, 1]
      lowResImageFormat = data[57, 4]
      lowResImageWidth = data[61, 1]
      lowResImageHeight = data[62, 1]

      header = Header.new
      header.signature = signature.unpack("C4")
      header.version = version.unpack("L<2")
      header.headersize = headerSize.unpack("L<1")
      header.width = width.unpack("S<1")
      header.height = height.unpack("S<1")
      header.flags = flags.unpack("L<1")
      header.frames = frames.unpack("S<1")
      header.firstframe = firstFrame.unpack("S<1")
      header.reflectivity = reflectivity.unpack("E3")
      header.bumpmapscale = bumpmapscale.unpack("E1")
      header.highresimageformat = highResImageFormat.unpack("L<1")
      header.mipmapcount = mipMapCount.unpack("C1")
      header.lowresimageformat = lowResImageFormat.unpack("L<1")
      header.lowresimagewidth = lowResImageWidth.unpack("C1")
      header.lowresimageheight = lowResImageHeight.unpack("C1")

      return header
    end
  end
end
