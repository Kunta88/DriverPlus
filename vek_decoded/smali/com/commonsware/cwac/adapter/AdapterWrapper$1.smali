.class Lcom/commonsware/cwac/adapter/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/cwac/adapter/AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/commonsware/cwac/adapter/AdapterWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper$1;->this$0:Lcom/commonsware/cwac/adapter/AdapterWrapper;

    .line 39
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper$1;->this$0:Lcom/commonsware/cwac/adapter/AdapterWrapper;

    invoke-virtual {v0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper$1;->this$0:Lcom/commonsware/cwac/adapter/AdapterWrapper;

    invoke-virtual {v0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
