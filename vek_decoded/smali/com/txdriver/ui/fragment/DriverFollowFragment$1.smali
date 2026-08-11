.class Lcom/txdriver/ui/fragment/DriverFollowFragment$1;
.super Ljava/util/TimerTask;
.source "DriverFollowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/DriverFollowFragment;->startReceiveDriverLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/DriverFollowFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/DriverFollowFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment$1;->this$0:Lcom/txdriver/ui/fragment/DriverFollowFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment$1;->this$0:Lcom/txdriver/ui/fragment/DriverFollowFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->access$000(Lcom/txdriver/ui/fragment/DriverFollowFragment;)V

    return-void
.end method
