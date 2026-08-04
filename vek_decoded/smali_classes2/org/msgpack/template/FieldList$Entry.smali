.class public Lorg/msgpack/template/FieldList$Entry;
.super Ljava/lang/Object;
.source "FieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private option:Lorg/msgpack/template/FieldOption;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    sget-object v0, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/msgpack/template/FieldList$Entry;-><init>(Ljava/lang/String;Lorg/msgpack/template/FieldOption;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/msgpack/template/FieldOption;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/msgpack/template/FieldList$Entry;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/msgpack/template/FieldList$Entry;->option:Lorg/msgpack/template/FieldOption;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/msgpack/template/FieldList$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()Lorg/msgpack/template/FieldOption;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/msgpack/template/FieldList$Entry;->option:Lorg/msgpack/template/FieldOption;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/msgpack/template/FieldList$Entry;->option:Lorg/msgpack/template/FieldOption;

    sget-object v1, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
