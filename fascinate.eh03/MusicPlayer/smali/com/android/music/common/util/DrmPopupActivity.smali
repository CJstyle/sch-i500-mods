.class public Lcom/android/music/common/util/DrmPopupActivity;
.super Landroid/app/Activity;
.source "DrmPopupActivity.java"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 17
    invoke-virtual {p0}, Lcom/android/music/common/util/DrmPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 19
    invoke-virtual {p0}, Lcom/android/music/common/util/DrmPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/util/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    .line 21
    new-instance v1, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct {v1}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 22
    .local v1, popupData:Lcom/android/music/common/util/DrmPopupData;
    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.string"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 24
    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 25
    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 26
    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.remain.counts"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 27
    iget-object v2, p0, Lcom/android/music/common/util/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.from"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 29
    new-instance v0, Lcom/android/music/common/util/DrmServicePopup;

    invoke-direct {v0, p0, v1}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 30
    .local v0, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual {v0}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method
