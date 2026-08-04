.class final Ljavassist/ClassPool$1;
.super Ljava/lang/Object;
.source "ClassPool.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/ClassPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    const-class v0, [B

    const-string v1, "java.lang.ClassLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    .line 80
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v3, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v6, v3, v8

    const-string v6, "defineClass"

    invoke-virtual {v1, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Ljavassist/ClassPool;->access$002(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v9, v3, [Ljava/lang/Class;

    .line 84
    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    aput-object v0, v9, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v9, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v9, v8

    const-class v0, Ljava/security/ProtectionDomain;

    aput-object v0, v9, v2

    invoke-virtual {v1, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljavassist/ClassPool;->access$102(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    .line 88
    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    const/4 v2, 0x6

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-class v3, Ljava/net/URL;

    aput-object v3, v0, v2

    const-string v2, "definePackage"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljavassist/ClassPool;->access$202(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    return-object v0
.end method
