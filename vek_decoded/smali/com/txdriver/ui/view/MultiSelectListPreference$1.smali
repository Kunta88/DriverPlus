.class Lcom/txdriver/ui/view/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/view/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/view/MultiSelectListPreference;Landroid/app/AlertDialog;Landroid/widget/Button;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

    iput-object p2, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-static {p1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->access$000(Lcom/txdriver/ui/view/MultiSelectListPreference;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->selectAll(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-static {p1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->access$100(Lcom/txdriver/ui/view/MultiSelectListPreference;Landroid/app/AlertDialog;)V

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-static {p1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->access$000(Lcom/txdriver/ui/view/MultiSelectListPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->access$002(Lcom/txdriver/ui/view/MultiSelectListPreference;Z)Z

    .line 56
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->val$button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreference$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-static {v0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->access$200(Lcom/txdriver/ui/view/MultiSelectListPreference;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
