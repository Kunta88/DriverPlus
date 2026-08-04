.class Lcom/txdriver/ui/activity/OrderActivity$9;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$9;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 242
    new-instance p1, Lcom/txdriver/ui/menu/AddClientInfoMenu;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$9;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderActivity;->access$600(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$9;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity$9;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v2}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v2

    iget v2, v2, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {p1, v0, v1, v2}, Lcom/txdriver/ui/menu/AddClientInfoMenu;-><init>(Landroid/content/Context;Lcom/txdriver/App;I)V

    invoke-virtual {p1}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->show()V

    return-void
.end method
