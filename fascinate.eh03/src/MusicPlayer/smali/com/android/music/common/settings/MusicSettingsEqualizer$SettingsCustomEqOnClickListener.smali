.class Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsCustomEqOnClickListener"
.end annotation


# instance fields
.field private mClickedNumber:I

.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method public constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V
    .locals 0
    .parameter
    .parameter "number"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->mClickedNumber:I

    .line 474
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v7, 0x7f0a00bf

    const/4 v8, 0x0

    .line 478
    sget-object v5, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_2

    .line 479
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v5

    if-nez v5, :cond_1

    .line 480
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$102(Lcom/android/music/common/settings/MusicSettingsEqualizer;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 484
    :goto_0
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 527
    :cond_0
    :goto_1
    return-void

    .line 482
    :cond_1
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v5, v5, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v5, v5, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 493
    :cond_3
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$602(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)I

    .line 495
    iget v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->mClickedNumber:I

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$302(I)I

    .line 497
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/util/MusicValueSaveController;->getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$702(Lcom/android/music/common/settings/MusicSettingsEqualizer;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "|"

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v3, strToken:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v5, 0x8

    if-ge v2, v5, :cond_5

    .line 503
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 504
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, token:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    .line 502
    .end local v4           #token:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 507
    :cond_4
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    aput v8, v5, v2

    goto :goto_3

    .line 510
    :cond_5
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v7}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 515
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_6

    .line 516
    :try_start_0
    sget-object v5, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v6, 0x0

    sget-object v7, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300()I

    move-result v8

    aget v7, v7, v8

    aput v7, v5, v6

    .line 517
    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_6
    :goto_4
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    .line 526
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v5, v5, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 519
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 520
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SettingsCustomEqOnClickListener() RemoteException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
