.class public Ljavassist/bytecode/stackmap/BasicBlock$Catch;
.super Ljava/lang/Object;
.source "BasicBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/BasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Catch"
.end annotation


# instance fields
.field public body:Ljavassist/bytecode/stackmap/BasicBlock;

.field public next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

.field public typeIndex:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/stackmap/BasicBlock;ILjavassist/bytecode/stackmap/BasicBlock$Catch;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    .line 60
    iput p2, p0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    .line 61
    iput-object p3, p0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    return-void
.end method
