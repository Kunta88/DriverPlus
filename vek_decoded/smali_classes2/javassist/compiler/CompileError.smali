.class public Ljavassist/compiler/CompileError;
.super Ljava/lang/Exception;
.source "CompileError.java"


# instance fields
.field private lex:Ljavassist/compiler/Lex;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Ljavassist/compiler/CompileError;->lex:Ljavassist/compiler/Lex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    iput-object p1, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Ljavassist/compiler/CompileError;->lex:Ljavassist/compiler/Lex;

    return-void
.end method

.method public constructor <init>(Ljavassist/CannotCompileException;)V
    .locals 0

    .line 37
    invoke-virtual {p1}, Ljavassist/CannotCompileException;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/NotFoundException;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLex()Ljavassist/compiler/Lex;
    .locals 1

    .line 44
    iget-object v0, p0, Ljavassist/compiler/CompileError;->lex:Ljavassist/compiler/Lex;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compile error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
