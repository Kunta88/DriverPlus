.class Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceCompat.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

.field final synthetic val$checkedItems:[Z


# direct methods
.method constructor <init>(Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;[Z)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    iput-object p2, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->val$checkedItems:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 197
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 198
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 199
    iget-object p2, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->val$checkedItems:[Z

    aput-boolean p1, p2, p3

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    iget-boolean p2, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    iget-object p4, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    iget-object p4, p4, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    iget-object p5, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    invoke-static {p5}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->access$000(Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;)[Ljava/lang/CharSequence;

    move-result-object p5

    aget-object p3, p5, p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    iget-boolean p2, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    iget-object p4, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    iget-object p4, p4, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    iget-object p5, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;->this$0:Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;

    invoke-static {p5}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->access$000(Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;)[Ljava/lang/CharSequence;

    move-result-object p5

    aget-object p3, p5, p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    :goto_0
    return-void
.end method
