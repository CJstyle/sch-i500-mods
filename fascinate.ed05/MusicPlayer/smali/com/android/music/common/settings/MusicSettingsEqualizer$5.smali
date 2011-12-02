.class Lcom/android/music/common/settings/MusicSettingsEqualizer$5;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 543
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 545
    :try_start_0
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom...onCancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v1, v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 565
    return-void

    .line 552
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v1

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$402(I)I

    .line 553
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v2, 0x0

    sget-object v3, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v4

    aget v3, v3, v4

    aput v3, v1, v2

    .line 554
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V

    .line 555
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$5;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$600(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNegativeButton() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
