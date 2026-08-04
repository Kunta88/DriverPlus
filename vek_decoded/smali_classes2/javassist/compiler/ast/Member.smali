.class public Ljavassist/compiler/ast/Member;
.super Ljavassist/compiler/ast/Symbol;
.source "Member.java"


# instance fields
.field private field:Ljavassist/CtField;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Ljavassist/compiler/ast/Member;->field:Ljavassist/CtField;

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 39
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atMember(Ljavassist/compiler/ast/Member;)V

    return-void
.end method

.method public getField()Ljavassist/CtField;
    .locals 1

    .line 37
    iget-object v0, p0, Ljavassist/compiler/ast/Member;->field:Ljavassist/CtField;

    return-object v0
.end method

.method public setField(Ljavassist/CtField;)V
    .locals 0

    .line 35
    iput-object p1, p0, Ljavassist/compiler/ast/Member;->field:Ljavassist/CtField;

    return-void
.end method
