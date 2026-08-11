.class public Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;
.super Landroid/preference/DialogPreference;
.source "MultiSelectListPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;)[Ljava/lang/CharSequence;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 159
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getPersistedStringSetCompat(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-static {p0, p1}, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->getPersistedStringSet(Landroid/preference/Preference;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method getSelectedItems(Ljava/util/Set;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 211
    array-length v1, v0

    .line 212
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 215
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 223
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 225
    iget-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    .line 227
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    const/4 p1, 0x0

    .line 232
    iput-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 270
    array-length p2, p1

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 274
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    .line 171
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    .line 181
    iget-object v1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    .line 184
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090010

    iget-object v3, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 247
    instance-of v0, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;

    if-eqz v0, :cond_2

    .line 248
    check-cast p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;

    .line 249
    iget-object v0, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    iput-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    .line 252
    :cond_0
    iget-object v0, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    iput-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    .line 255
    :cond_1
    iget-boolean v0, p1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->preferenceChanged:Z

    iput-boolean v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    .line 257
    invoke-virtual {p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;

    invoke-direct {v1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 239
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    iput-object v0, v1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    .line 240
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    iput-object v0, v1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    .line 241
    iget-boolean v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mPreferenceChanged:Z

    iput-boolean v0, v1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->preferenceChanged:Z

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getPersistedStringSetCompat(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method protected persistStringSetCompat(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 264
    invoke-static {p0, p1}, Lcom/h6ah4i/android/compat/preference/PreferenceCompat;->persistStringSet(Landroid/preference/Preference;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public setEntries(I)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 142
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->persistStringSetCompat(Ljava/util/Set;)Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    .line 191
    iget-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->mNewValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;->getSelectedItems(Ljava/util/Set;)[Z

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x2

    .line 194
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 195
    new-instance v1, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;

    invoke-direct {v1, p0, v0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$1;-><init>(Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;[Z)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
