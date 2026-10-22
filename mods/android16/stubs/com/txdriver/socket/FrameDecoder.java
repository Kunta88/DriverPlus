package com.txdriver.socket;
public interface FrameDecoder { Packet decode(java.nio.ByteBuffer input); void reset(); }
