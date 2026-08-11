.class public Ljavassist/tools/rmi/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# instance fields
.field private importer:Ljavassist/tools/rmi/ObjectImporter;

.field private objectId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forwardStatic([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/RemoteException;
        }
    .end annotation

    .line 35
    new-instance p0, Ljavassist/tools/rmi/RemoteException;

    const-string p1, "cannot call a static method."

    invoke-direct {p0, p1}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public forward([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 29
    iget-object v0, p0, Ljavassist/tools/rmi/Sample;->importer:Ljavassist/tools/rmi/ObjectImporter;

    iget v1, p0, Ljavassist/tools/rmi/Sample;->objectId:I

    invoke-virtual {v0, v1, p2, p1}, Ljavassist/tools/rmi/ObjectImporter;->call(II[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
