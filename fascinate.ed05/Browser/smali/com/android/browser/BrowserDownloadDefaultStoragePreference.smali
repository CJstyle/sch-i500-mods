.class public Lcom/android/browser/BrowserDownloadDefaultStoragePreference;
.super Landroid/preference/DialogPreference;
.source "BrowserDownloadDefaultStoragePreference.java"


# instance fields
.field private bInternalMemoryUsable:Z

.field private mDownloadDefaultStoragePref:Landroid/view/View;

.field private mRBExternalMemory:Landroid/widget/RadioButton;

.field private mRBInternalMemory:Landroid/widget/RadioButton;

.field private sThisLogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "BrowserDownloadDefaultStoragePreference"

    iput-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-string v0, "BrowserDownloadDefaultStoragePreference"

    iput-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const v8, -0x777778

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    const-string v5, "onCreateDialogView()start."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 62
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mDownloadDefaultStoragePref:Landroid/view/View;

    .line 64
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mDownloadDefaultStoragePref:Landroid/view/View;

    const v5, 0x7f0d0059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    .line 65
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mDownloadDefaultStoragePref:Landroid/view/View;

    const v5, 0x7f0d0058

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, bMoviNandMounted:Z
    const/4 v1, 0x0

    .line 70
    .local v1, bSdCardMounted:Z
    const/4 v3, 0x0

    .line 78
    .local v3, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 84
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    const-string v5, "onCreateDialogView() : SD CARD (MMC) is mounted"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 88
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 90
    if-ne v0, v6, :cond_3

    if-ne v1, v6, :cond_3

    .line 102
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 104
    iput-boolean v6, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    .line 114
    :goto_0
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$1;

    invoke-direct {v5, p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$1;-><init>(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$2;

    invoke-direct {v5, p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$2;-><init>(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mDownloadDefaultStoragePref:Landroid/view/View;

    return-object v4

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    iput-boolean v7, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    goto :goto_0

    .line 128
    :cond_3
    if-ne v0, v6, :cond_4

    if-nez v1, :cond_4

    .line 129
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 130
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 132
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    iput-boolean v6, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    .line 136
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$3;

    invoke-direct {v5, p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$3;-><init>(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 143
    :cond_4
    if-nez v0, :cond_5

    if-ne v1, v6, :cond_5

    .line 144
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 145
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 147
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 148
    iput-boolean v7, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    .line 150
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$4;

    invoke-direct {v5, p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$4;-><init>(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 157
    :cond_5
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 158
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 159
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBInternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 160
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 161
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->mRBExternalMemory:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    const/4 v2, 0x1

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-boolean v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->bInternalMemoryUsable:Z

    if-ne v0, v2, :cond_1

    .line 171
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 172
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    const-string v1, "onDialogClosed():mRBInternalMemory.hasFocus() is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 180
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 176
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->sThisLogTag:Ljava/lang/String;

    const-string v1, "onDialogClosed():mRBExternalMemory.hasFocus() is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
