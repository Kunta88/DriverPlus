.class Ljavassist/compiler/Token;
.super Ljava/lang/Object;
.source "Lex.java"


# instance fields
.field public doubleValue:D

.field public longValue:J

.field public next:Ljavassist/compiler/Token;

.field public textValue:Ljava/lang/String;

.field public tokenId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    return-void
.end method
