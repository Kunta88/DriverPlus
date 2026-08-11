.class Ljavassist/bytecode/AnnotationsAttribute$Renamer;
.super Ljavassist/bytecode/AnnotationsAttribute$Walker;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Renamer"
.end annotation


# instance fields
.field classnames:Ljava/util/Map;

.field cpool:Ljavassist/bytecode/ConstPool;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;-><init>([B)V

    .line 424
    iput-object p2, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 425
    iput-object p3, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->classnames:Ljava/util/Map;

    return-void
.end method

.method private renameType(II)V
    .locals 1

    .line 446
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p2

    .line 447
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->classnames:Ljava/util/Map;

    invoke-static {p2, v0}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 449
    iget-object p2, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    .line 450
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->info:[B

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_0
    return-void
.end method


# virtual methods
.method annotation(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x4

    .line 429
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->renameType(II)V

    .line 430
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result p1

    return p1
.end method

.method classMemberValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 441
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->renameType(II)V

    .line 442
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    return-void
.end method

.method enumMemberValue(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 436
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->renameType(II)V

    .line 437
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    return-void
.end method
