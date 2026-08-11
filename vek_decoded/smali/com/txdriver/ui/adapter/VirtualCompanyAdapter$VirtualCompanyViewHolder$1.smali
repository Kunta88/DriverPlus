.class Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;
.super Ljava/lang/Object;
.source "VirtualCompanyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;-><init>(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$302(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;I)I

    .line 65
    iget-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$500(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)[Lcom/txdriver/json/CompanyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object v1, v1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-static {v1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$300(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/txdriver/json/CompanyInfo;->getCompanyId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$402(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;I)I

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$500(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)[Lcom/txdriver/json/CompanyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object v1, v1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-static {v1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$300(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/txdriver/json/CompanyInfo;->getCompanyLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->access$602(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->notifyDataSetChanged()V

    return-void
.end method
