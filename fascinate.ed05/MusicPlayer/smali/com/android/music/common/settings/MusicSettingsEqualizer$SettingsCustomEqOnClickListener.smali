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
    .line 373
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->mClickedNumber:I

    .line 376
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v6, 0x7f0a00b8

    const/4 v7, 0x0

    .line 380
    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 381
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_0

    .line 382
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$202(Lcom/android/music/common/settings/MusicSettingsEqualizer;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 386
    :goto_0
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 425
    :goto_1
    return-void

    .line 384
    :cond_0
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$400()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$702(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)I

    .line 393
    iget v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->mClickedNumber:I

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$402(I)I

    .line 395
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/util/MusicValueSaveController;->getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$802(Lcom/android/music/common/settings/MusicSettingsEqualizer;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "|"

    invoke-direct {v2, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v2, strToken:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v4, 0x8

    if-ge v1, v4, :cond_3

    .line 401
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, token:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    .line 400
    .end local v3           #token:Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 405
    :cond_2
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v4

    aput v7, v4, v1

    goto :goto_3

    .line 408
    :cond_3
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    :try_start_0
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 412
    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v5, 0x0

    sget-object v6, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$400()I

    move-result v7

    aget v6, v6, v7

    aput v6, v4, v5

    .line 413
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V

    .line 414
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v4

    sget-object v5, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    .line 424
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$SettingsCustomEqOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v4, v4, Lcom/android/music/common/settings/MusicSettingsEqualizer;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 417
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsCustomEqOnClickListener() RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
