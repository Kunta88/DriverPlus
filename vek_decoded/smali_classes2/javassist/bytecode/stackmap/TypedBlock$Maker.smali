.class public Ljavassist/bytecode/stackmap/TypedBlock$Maker;
.super Ljavassist/bytecode/stackmap/BasicBlock$Maker;
.source "TypedBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypedBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 0

    .line 134
    new-array p1, p1, [Ljavassist/bytecode/stackmap/TypedBlock;

    return-object p1
.end method

.method protected makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1

    .line 130
    new-instance v0, Ljavassist/bytecode/stackmap/TypedBlock;

    invoke-direct {v0, p1}, Ljavassist/bytecode/stackmap/TypedBlock;-><init>(I)V

    return-object v0
.end method
