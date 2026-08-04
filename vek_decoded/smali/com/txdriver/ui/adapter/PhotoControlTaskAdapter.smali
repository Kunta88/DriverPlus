.class public Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhotoControlTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;,
        Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;,
        Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private onTaskClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;"
        }
    .end annotation
.end field

.field private tasksButtonOnClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;",
            "Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasksButtonOnClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;

    return-void
.end method

.method static synthetic access$400(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;)Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->onTaskClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->onBindViewHolder(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;I)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/PhotoControlTask;

    .line 39
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->access$000(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/PhotoControlTask;

    iget-object v2, v2, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    .line 40
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/PhotoControlTask;

    iget v3, v3, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/txdriver/json/PhotoControlTask;->getTaskTimeToLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->access$100(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/PhotoControlTask;

    iget-object v2, v2, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasks:Ljava/util/List;

    .line 42
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/PhotoControlTask;

    iget p2, p2, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    .line 41
    invoke-virtual {v0, v2, p2}, Lcom/txdriver/json/PhotoControlTask;->getTaskDateToLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->access$300(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, v0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0070

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;

    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->tasksButtonOnClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;

    invoke-direct {p2, p0, p1, v0}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;-><init>(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;Landroid/view/View;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;)V

    return-object p2
.end method

.method public setOnTaskClickListener(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->onTaskClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;

    return-void
.end method
