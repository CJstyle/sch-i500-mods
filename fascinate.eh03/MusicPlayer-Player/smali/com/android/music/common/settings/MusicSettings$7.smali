.class Lcom/android/music/common/settings/MusicSettings$7;
.super Ljava/lang/Object;
.source "MusicSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/settings/MusicSettings;->settingsEventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettings;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$7;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 412
    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$200()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 413
    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettings;->access$202(I)I

    .line 414
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$7;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$300(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    :goto_0
    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$200()I

    move-result v1

    invoke-static {v1}, Lcom/android/music/common/util/MusicValueSaveController;->setVisualization(I)V

    .line 426
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v2, 0x3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$200()I

    move-result v3

    if-nez v3, :cond_2

    const/high16 v3, 0x100

    :goto_1
    aput v3, v1, v2

    .line 428
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 431
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_2
    return-void

    .line 416
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :cond_1
    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettings;->access$202(I)I

    .line 417
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$7;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$300(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 426
    :cond_2
    const/high16 v3, 0x80

    goto :goto_1

    .line 435
    .restart local v0       #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v1

    goto :goto_2
.end method
