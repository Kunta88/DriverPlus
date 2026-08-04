.class public Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PhotoControlTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoControlTaskViewHolder"
.end annotation


# instance fields
.field private dateLeftTextView:Landroid/widget/TextView;

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private taskDescriptionTextView:Landroid/widget/TextView;

.field private taskNameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;

.field private timeLeftTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;Landroid/view/View;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;

    .line 62
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->listenerRef:Ljava/lang/ref/WeakReference;

    const p3, 0x7f09031d

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->timeLeftTextView:Landroid/widget/TextView;

    const p3, 0x7f090317

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->dateLeftTextView:Landroid/widget/TextView;

    const p3, 0x7f090323

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->taskNameTextView:Landroid/widget/TextView;

    const p3, 0x7f09031a

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->taskDescriptionTextView:Landroid/widget/TextView;

    const p3, 0x7f09007f

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    const v0, 0x7f09007b

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 72
    new-instance v1, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->timeLeftTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->dateLeftTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->taskNameTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->taskDescriptionTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;

    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$PhotoControlTaskViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;->onButtonClick(ILandroid/view/View;)V

    return-void
.end method
