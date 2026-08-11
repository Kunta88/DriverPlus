.class public final Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat;
.super Ljava/lang/Object;
.source "SharedPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompatWrapper;,
        Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat$EditorCompat;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImplGB;

    invoke-direct {v0}, Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImplGB;-><init>()V

    sput-object v0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/h6ah4i/android/compat/content/SharedPreferenceCompat;->IMPL:Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/h6ah4i/android/compat/content/SharedPreferencesCompatImpl;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
