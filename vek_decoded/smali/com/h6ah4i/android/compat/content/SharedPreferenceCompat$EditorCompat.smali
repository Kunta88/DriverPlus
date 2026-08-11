.class public Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditorCompat"
.end annotation


# static fields
.field private static final IMPL:Lcom/h6ah4i/android/compat/content/EditorCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/h6ah4i/android/compat/content/EditorCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/h6ah4i/android/compat/content/EditorCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;->IMPL:Lcom/h6ah4i/android/compat/content/EditorCompatImpl;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/h6ah4i/android/compat/content/EditorCompatImplGB;

    invoke-direct {v0}, Lcom/h6ah4i/android/compat/content/EditorCompatImplGB;-><init>()V

    sput-object v0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;->IMPL:Lcom/h6ah4i/android/compat/content/EditorCompatImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;->IMPL:Lcom/h6ah4i/android/compat/content/EditorCompatImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/h6ah4i/android/compat/content/EditorCompatImpl;->putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public static tryApply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 97
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method
