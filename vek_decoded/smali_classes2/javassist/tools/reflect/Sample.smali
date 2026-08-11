.class public Ljavassist/tools/reflect/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# static fields
.field private static _classobject:Ljavassist/tools/reflect/ClassMetaobject;


# instance fields
.field private _metaobject:Ljavassist/tools/reflect/Metaobject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trapRead([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 42
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 43
    sget-object p0, Ljavassist/tools/reflect/Sample;->_classobject:Ljavassist/tools/reflect/ClassMetaobject;

    invoke-virtual {p0, p1}, Ljavassist/tools/reflect/ClassMetaobject;->trapFieldRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    aget-object p0, p0, v0

    check-cast p0, Ljavassist/tools/reflect/Metalevel;

    invoke-interface {p0}, Ljavassist/tools/reflect/Metalevel;->_getMetaobject()Ljavassist/tools/reflect/Metaobject;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavassist/tools/reflect/Metaobject;->trapFieldRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static trapStatic([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    sget-object v0, Ljavassist/tools/reflect/Sample;->_classobject:Ljavassist/tools/reflect/ClassMetaobject;

    invoke-virtual {v0, p1, p0}, Ljavassist/tools/reflect/ClassMetaobject;->trapMethodcall(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static trapWrite([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 49
    aget-object v0, p0, v0

    check-cast v0, Ljavassist/tools/reflect/Metalevel;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Ljavassist/tools/reflect/Sample;->_classobject:Ljavassist/tools/reflect/ClassMetaobject;

    aget-object p0, p0, v1

    invoke-virtual {v0, p1, p0}, Ljavassist/tools/reflect/ClassMetaobject;->trapFieldWrite(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v0}, Ljavassist/tools/reflect/Metalevel;->_getMetaobject()Ljavassist/tools/reflect/Metaobject;

    move-result-object v0

    aget-object p0, p0, v1

    invoke-virtual {v0, p1, p0}, Ljavassist/tools/reflect/Metaobject;->trapFieldWrite(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public trap([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Ljavassist/tools/reflect/Sample;->_metaobject:Ljavassist/tools/reflect/Metaobject;

    if-nez v0, :cond_0

    .line 30
    invoke-static {p0, p2, p1}, Ljavassist/tools/reflect/ClassMetaobject;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    invoke-virtual {v0, p2, p1}, Ljavassist/tools/reflect/Metaobject;->trapMethodcall(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
