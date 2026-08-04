.class public Ljavassist/bytecode/annotation/AnnotationMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "AnnotationMemberValue.java"


# instance fields
.field value:Ljavassist/bytecode/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/AnnotationMemberValue;-><init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/bytecode/ConstPool;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x40

    .line 44
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 45
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0

    .line 94
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitAnnotationMemberValue(Ljavassist/bytecode/annotation/AnnotationMemberValue;)V

    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavassist/bytecode/annotation/AnnotationMemberValue;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/ClassNotFoundException;

    const-string v0, "no type specified"

    invoke-direct {p1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationMemberValue;->getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    invoke-static {p1, p3, p2, v0}, Ljavassist/bytecode/annotation/AnnotationImpl;->make(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljavassist/bytecode/annotation/Annotation;
    .locals 1

    .line 65
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    return-object v0
.end method

.method public setValue(Ljavassist/bytecode/annotation/Annotation;)V
    .locals 0

    .line 72
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotationValue()V

    .line 87
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/annotation/Annotation;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    return-void
.end method
