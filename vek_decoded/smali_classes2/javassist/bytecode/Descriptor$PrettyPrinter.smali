.class Ljavassist/bytecode/Descriptor$PrettyPrinter;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrettyPrinter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I
    .locals 3

    .line 763
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 767
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_3

    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 772
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    const/16 v0, 0x2e

    .line 779
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 782
    :cond_3
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object p2

    .line 783
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_4

    const-string v0, "[]"

    .line 787
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, p2

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 744
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 746
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 747
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    if-le v2, v1, :cond_0

    const/16 v3, 0x2c

    .line 749
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 751
    :cond_0
    invoke-static {v0, v2, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 757
    :cond_2
    invoke-static {v0, v1, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    .line 759
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
