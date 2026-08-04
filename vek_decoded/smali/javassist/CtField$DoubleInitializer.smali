.class Ljavassist/CtField$DoubleInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleInitializer"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 1264
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    iput-wide p1, p0, Ljavassist/CtField$DoubleInitializer;->value:D

    return-void
.end method


# virtual methods
.method check(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const-string v0, "D"

    .line 1267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1268
    :cond_0
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "type mismatch"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p4, 0x0

    .line 1275
    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1276
    iget-wide p4, p0, Ljavassist/CtField$DoubleInitializer;->value:D

    invoke-virtual {p3, p4, p5}, Ljavassist/bytecode/Bytecode;->addLdc2w(D)V

    .line 1277
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1284
    iget-wide v0, p0, Ljavassist/CtField$DoubleInitializer;->value:D

    invoke-virtual {p3, v0, v1}, Ljavassist/bytecode/Bytecode;->addLdc2w(D)V

    .line 1285
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I
    .locals 2

    .line 1290
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_0

    .line 1291
    iget-wide v0, p0, Ljavassist/CtField$DoubleInitializer;->value:D

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
