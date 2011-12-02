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
.field private mClickedCheckBox:Landroid/widget/CheckBox;

.field private mClickedNumber:I

.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;


# direct methods
.method public constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;ILandroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter "_number"
    .parameter "_checkBox"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mClickedCheckBox:Landroid/widget/CheckBox;

    .line 290
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mClickedNumber:I

    .line 291
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, hasChecked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$200(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)[I

    move-result-object v3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v2, v3, v2

    iget v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mClickedNumber:I

    if-ne v2, v3, :cond_1

    .line 299
    const/4 v0, 0x1

    .line 304
    :cond_0
    if-eqz v0, :cond_2

    .line 305
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mClickedCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 316
    :goto_1
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$400(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V

    .line 317
    return-void

    .line 297
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mClickedCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$300(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mClickedNumber:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
