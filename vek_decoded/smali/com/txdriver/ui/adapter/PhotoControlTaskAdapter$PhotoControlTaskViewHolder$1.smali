.class Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;
.super Ljava/lang/Object;
.source "PhotoControlTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;-><init>(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;Landroid/view/View;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->access$400(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;)Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->access$400(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;)Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;->onTaskClick(I)V

    :cond_0
    return-void
.end method
