package android.content.res;
public class AssetFileDescriptor implements java.io.Closeable {
 public boolean closed;
 public java.io.FileDescriptor getFileDescriptor(){return new java.io.FileDescriptor();}
 public long getStartOffset(){return 0;}
 public long getLength(){return 84635;}
 public void close(){closed=true;}
}
