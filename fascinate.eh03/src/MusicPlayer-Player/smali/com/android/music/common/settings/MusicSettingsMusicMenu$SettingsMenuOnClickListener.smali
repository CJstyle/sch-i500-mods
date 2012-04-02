.class Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsMusicMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsMenuOnClickListener"
.end annotation


# instance fields
.field private mMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;


# direct methods
.method public constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;)V
    .locals 1
    .parameter
    .parameter "menuItem"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 389
    iput-object p2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 390
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    iget-boolean v0, v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    .line 396
    .local v0, hasChecked:Z
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    iget-object v1, v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    if-nez v0, :cond_1

    move v2, v4

    :goto_1
    iput-boolean v2, v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    .line 399
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$100(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V

    .line 400
    return-void

    :cond_0
    move v2, v3

    .line 396
    goto :goto_0

    :cond_1
    move v2, v3

    .line 397
    goto :goto_1
.end method
