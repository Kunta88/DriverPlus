.class public Lcom/txdriver/service/MainService$LocalBinder;
.super Landroid/os/Binder;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/service/MainService;


# direct methods
.method public constructor <init>(Lcom/txdriver/service/MainService;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/txdriver/service/MainService$LocalBinder;->this$0:Lcom/txdriver/service/MainService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/txdriver/service/MainService;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/txdriver/service/MainService$LocalBinder;->this$0:Lcom/txdriver/service/MainService;

    return-object v0
.end method
