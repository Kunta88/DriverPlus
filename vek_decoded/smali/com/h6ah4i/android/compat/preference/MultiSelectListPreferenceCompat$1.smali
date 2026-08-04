.class Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;


# direct methods
.method constructor <init>(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 202
    iget-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    invoke-static {p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$000(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)Z

    move-result p3

    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    invoke-static {v0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$200(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    .line 203
    invoke-static {v1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$100(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    .line 202
    invoke-static {p1, p2}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$002(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;Z)Z

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    invoke-static {p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$000(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)Z

    move-result p3

    iget-object v0, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    invoke-static {v0}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$200(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$1;->this$0:Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;

    .line 206
    invoke-static {v1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$100(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    .line 205
    invoke-static {p1, p2}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;->access$002(Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat;Z)Z

    :goto_0
    return-void
.end method
