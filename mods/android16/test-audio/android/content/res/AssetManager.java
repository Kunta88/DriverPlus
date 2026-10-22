package android.content.res;
public class AssetManager {
 public AssetFileDescriptor last; public boolean fail;
 public AssetFileDescriptor openFd(String name) throws java.io.IOException {
  if(fail)throw new java.io.IOException();
  return last=new AssetFileDescriptor();
 }
}
