.class Ljavassist/CtField$MultiArrayInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiArrayInitializer"
.end annotation


# instance fields
.field dim:[I

.field type:Ljavassist/CtClass;


# direct methods
.method constructor <init>(Ljavassist/CtClass;[I)V
    .locals 0

    .line 1365
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    iput-object p1, p0, Ljavassist/CtField$MultiArrayInitializer;->type:Ljavassist/CtClass;

    iput-object p2, p0, Ljavassist/CtField$MultiArrayInitializer;->dim:[I

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

    const/4 v0, 0x0

    .line 1368
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    return-void

    .line 1369
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

    .line 1376
    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1377
    iget-object p4, p0, Ljavassist/CtField$MultiArrayInitializer;->dim:[I

    invoke-virtual {p3, p1, p4}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljavassist/CtClass;[I)I

    move-result p4

    .line 1378
    sget-object p5, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p5, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    return p4
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1385
    iget-object p4, p0, Ljavassist/CtField$MultiArrayInitializer;->dim:[I

    invoke-virtual {p3, p1, p4}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljavassist/CtClass;[I)I

    move-result p4

    .line 1386
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method
