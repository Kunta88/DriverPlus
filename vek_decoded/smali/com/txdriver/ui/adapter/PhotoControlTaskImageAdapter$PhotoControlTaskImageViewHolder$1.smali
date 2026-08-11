.class Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;
.super Ljava/lang/Object;
.source "PhotoControlTaskImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;-><init>(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->access$300(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;)Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->access$300(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;)Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;->onImageClick(I)V

    :cond_0
    return-void
.end method
