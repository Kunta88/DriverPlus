.class Ljavassist/bytecode/AnnotationsAttribute$Copier;
.super Ljavassist/bytecode/AnnotationsAttribute$Walker;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field classnames:Ljava/util/Map;

.field destPool:Ljavassist/bytecode/ConstPool;

.field output:Ljava/io/ByteArrayOutputStream;

.field srcPool:Ljavassist/bytecode/ConstPool;

.field writer:Ljavassist/bytecode/annotation/AnnotationsWriter;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 1

    .line 473
    invoke-direct {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;-><init>([B)V

    .line 474
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->output:Ljava/io/ByteArrayOutputStream;

    .line 475
    new-instance p1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->output:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0, p3}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    iput-object p1, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    .line 476
    iput-object p2, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    .line 477
    iput-object p3, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    .line 478
    iput-object p4, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->classnames:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method annotation(III)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copyType(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(II)V

    .line 498
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result p1

    return p1
.end method

.method annotationArray(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    .line 493
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(II)I

    move-result p1

    return p1
.end method

.method annotationMemberValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotationValue()V

    .line 525
    invoke-super {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationMemberValue(I)I

    move-result p1

    return p1
.end method

.method arrayMemberValue(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->arrayValue(I)V

    .line 530
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->arrayMemberValue(II)I

    move-result p1

    return p1
.end method

.method classMemberValue(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copyType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->classInfoIndex(I)V

    .line 520
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    return-void
.end method

.method close()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V

    .line 483
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method constValueMember(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copy(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 508
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->constValueMember(II)V

    return-void
.end method

.method copy(I)I
    .locals 3

    .line 543
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->classnames:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method copyType(I)I
    .locals 1

    .line 557
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    .line 558
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->classnames:Ljava/util/Map;

    invoke-static {p1, v0}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 559
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method enumMemberValue(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copyType(I)I

    move-result v1

    invoke-virtual {p0, p3}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copy(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->enumConstValue(II)V

    .line 515
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    return-void
.end method

.method memberValuePair(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->memberValuePair(I)V

    .line 503
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(II)I

    move-result p1

    return p1
.end method

.method parameters(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numParameters(I)V

    .line 488
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->parameters(II)V

    return-void
.end method
