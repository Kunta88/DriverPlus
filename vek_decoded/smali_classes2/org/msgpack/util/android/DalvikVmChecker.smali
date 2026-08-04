.class public final Lorg/msgpack/util/android/DalvikVmChecker;
.super Ljava/lang/Object;
.source "DalvikVmChecker.java"


# static fields
.field private static final isDalvikVm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.vm.name"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sput-boolean v0, Lorg/msgpack/util/android/DalvikVmChecker;->isDalvikVm:Z

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lorg/msgpack/util/android/DalvikVmChecker;->isDalvikVm:Z

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDalvikVm()Z
    .locals 1

    .line 15
    sget-boolean v0, Lorg/msgpack/util/android/DalvikVmChecker;->isDalvikVm:Z

    return v0
.end method
