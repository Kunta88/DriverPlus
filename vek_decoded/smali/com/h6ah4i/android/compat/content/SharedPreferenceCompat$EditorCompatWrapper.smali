.class public final Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;
.super Ljava/lang/Object;
.source "SharedPreferenceCompat.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompatWrapper"
.end annotation


# instance fields
.field private final mEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;->tryApply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0, p1, p2}, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;->putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
