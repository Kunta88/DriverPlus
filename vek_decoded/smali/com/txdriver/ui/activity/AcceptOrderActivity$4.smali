.class Lcom/txdriver/ui/activity/AcceptOrderActivity$4;
.super Ljava/lang/Object;
.source "AcceptOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptOrder(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

.field final synthetic val$deliveryTime:Ljava/lang/Integer;

.field final synthetic val$order:Lcom/txdriver/db/Order;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;Ljava/lang/Integer;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->val$order:Lcom/txdriver/db/Order;

    iput-object p3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->val$deliveryTime:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->val$order:Lcom/txdriver/db/Order;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->val$deliveryTime:Ljava/lang/Integer;

    invoke-static {p1, p2, v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$200(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;Ljava/lang/Integer;)V

    .line 182
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    return-void
.end method
