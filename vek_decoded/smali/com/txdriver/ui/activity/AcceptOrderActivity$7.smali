.class Lcom/txdriver/ui/activity/AcceptOrderActivity$7;
.super Ljava/lang/Object;
.source "AcceptOrderActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity;->loadMap(Lcom/txdriver/db/Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

.field final synthetic val$order:Lcom/txdriver/db/Order;

.field final synthetic val$picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;Lcom/squareup/picasso/Picasso;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->val$order:Lcom/txdriver/db/Order;

    iput-object p3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->val$picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$300(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 374
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 375
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->val$order:Lcom/txdriver/db/Order;

    invoke-static {v0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$400(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->val$picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$300(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method
