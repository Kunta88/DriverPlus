.class Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$3;
.super Ljava/lang/Object;
.source "PhotoControlTaskListFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->initViews(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$3;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskClick(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$3;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->replaceFragment(I)V

    return-void
.end method
