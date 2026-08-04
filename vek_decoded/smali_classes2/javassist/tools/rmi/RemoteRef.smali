.class public Ljavassist/tools/rmi/RemoteRef;
.super Ljava/lang/Object;
.source "RemoteRef.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public classname:Ljava/lang/String;

.field public oid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Ljavassist/tools/rmi/RemoteRef;->oid:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Ljavassist/tools/rmi/RemoteRef;->oid:I

    .line 34
    iput-object p2, p0, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    return-void
.end method
