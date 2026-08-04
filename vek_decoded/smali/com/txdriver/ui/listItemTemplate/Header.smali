.class public Lcom/txdriver/ui/listItemTemplate/Header;
.super Lcom/txdriver/ui/listItemTemplate/ListItem;
.source "Header.java"

# interfaces
.implements Lcom/txdriver/ui/listItemTemplate/Connectable;


# instance fields
.field private header:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/txdriver/ui/listItemTemplate/ListItem;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/txdriver/ui/listItemTemplate/Header;->header:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/txdriver/ui/listItemTemplate/Header;->header:Ljava/lang/String;

    return-object v0
.end method
