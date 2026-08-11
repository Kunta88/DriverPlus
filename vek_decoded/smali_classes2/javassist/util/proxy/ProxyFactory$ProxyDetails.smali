.class Ljavassist/util/proxy/ProxyFactory$ProxyDetails;
.super Ljava/lang/Object;
.source "ProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/ProxyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProxyDetails"
.end annotation


# instance fields
.field isUseWriteReplace:Z

.field proxyClass:Ljava/lang/ref/WeakReference;

.field signature:[B


# direct methods
.method constructor <init>([BLjava/lang/Class;Z)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->signature:[B

    .line 329
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->proxyClass:Ljava/lang/ref/WeakReference;

    .line 330
    iput-boolean p3, p0, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->isUseWriteReplace:Z

    return-void
.end method
