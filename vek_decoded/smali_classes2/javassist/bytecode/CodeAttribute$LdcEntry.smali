.class Ljavassist/bytecode/CodeAttribute$LdcEntry;
.super Ljava/lang/Object;
.source "CodeAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LdcEntry"
.end annotation


# instance fields
.field index:I

.field next:Ljavassist/bytecode/CodeAttribute$LdcEntry;

.field where:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doit([BLjavassist/bytecode/CodeAttribute$LdcEntry;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 438
    invoke-static {p0, p2, p3, p1}, Ljavassist/bytecode/CodeIterator;->changeLdcToLdcW([BLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeAttribute$LdcEntry;)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method
