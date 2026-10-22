package com.txdriver.socket;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
public final class FrameWriter {
 private FrameWriter(){}
 public static boolean write(WritableByteChannel channel,ByteBuffer buffer) throws IOException {
  channel.write(buffer);
  return !buffer.hasRemaining();
 }
}
