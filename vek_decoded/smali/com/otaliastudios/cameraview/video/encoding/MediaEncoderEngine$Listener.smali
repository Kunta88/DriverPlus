.class public interface abstract Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;
.super Ljava/lang/Object;
.source "MediaEncoderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEncodingEnd(ILjava/lang/Exception;)V
.end method

.method public abstract onEncodingStart()V
.end method

.method public abstract onEncodingStop()V
.end method
