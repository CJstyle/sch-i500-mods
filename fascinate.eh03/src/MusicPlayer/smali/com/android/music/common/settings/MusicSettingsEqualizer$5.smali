.class Lcom/android/music/common/settings/MusicSettingsEqualizer$5;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 620
    :try_start_0
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 622
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_0

    .line 623
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$600(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 624
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v7}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    const/4 v2, 0x0

    .line 630
    .local v2, eq:I
    invoke-static {}, Lcom/android/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v2

    .line 631
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .end local v2           #eq:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v3, v3, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 647
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    .line 648
    return-void

    .line 634
    .restart local v0       #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$600(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v3

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$302(I)I

    .line 635
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x0

    sget-object v5, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$600(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v6

    aget v5, v5, v6

    aput v5, v3, v4

    .line 636
    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V

    .line 637
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$500(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 640
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 641
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNegativeButton() RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
