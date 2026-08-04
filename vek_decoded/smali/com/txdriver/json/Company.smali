.class public Lcom/txdriver/json/Company;
.super Ljava/lang/Object;
.source "Company.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/txdriver/json/Company;->id:I

    .line 15
    iput-object p2, p0, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    return-object v0
.end method
