.class Lcom/android/music/common/settings/MusicSettings$6;
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
    .line 296
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 298
    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$300()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 299
    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettings;->access$302(I)I

    .line 300
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettings;->access$400(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    :goto_0
    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$300()I

    move-result v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->setVisualization(I)V

    .line 312
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$300()I

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, 0x100

    :goto_1
    aput v2, v0, v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettings;->access$000(Lcom/android/music/common/settings/MusicSettings;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettings;->access$000(Lcom/android/music/common/settings/MusicSettings;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_2
    return-void

    .line 302
    :cond_1
    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$302(I)I

    .line 303
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettings;->access$400(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 312
    :cond_2
    const/high16 v2, 0x80

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    goto :goto_2
.end method
