.class Lcom/txdriver/ui/fragment/DriversMapFragment$1;
.super Ljava/util/TimerTask;
.source "DriversMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/DriversMapFragment;->startReceiveDrivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/DriversMapFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/DriversMapFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriversMapFragment$1;->this$0:Lcom/txdriver/ui/fragment/DriversMapFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment$1;->this$0:Lcom/txdriver/ui/fragment/DriversMapFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->access$000(Lcom/txdriver/ui/fragment/DriversMapFragment;)V

    return-void
.end method
