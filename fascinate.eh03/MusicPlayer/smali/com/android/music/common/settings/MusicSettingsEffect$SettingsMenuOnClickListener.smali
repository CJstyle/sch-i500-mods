.class Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;
.super Ljava/lang/Object;
.source "MusicSettingsEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsMenuOnClickListener"
.end annotation


# instance fields
.field private mClickedNumber:I

.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEffect;


# direct methods
.method public constructor <init>(Lcom/android/music/common/settings/MusicSettingsEffect;I)V
    .locals 0
    .parameter
    .parameter "_number"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    .line 454
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x7f0a00bf

    const v7, 0x7f0a00b2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 458
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 459
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-virtual {v5, v8}, Lcom/android/music/common/settings/MusicSettingsEffect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$502(Lcom/android/music/common/settings/MusicSettingsEffect;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 467
    :goto_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 468
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 522
    :cond_0
    :goto_1
    return-void

    .line 465
    .restart local p0
    :cond_1
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 472
    :cond_2
    const/4 v2, 0x0

    .line 473
    .local v2, index:I
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 475
    iget v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    if-ne v2, v3, :cond_3

    .line 477
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setSelected(Z)V

    .line 473
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 481
    :cond_3
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setSelected(Z)V

    goto :goto_3

    .line 485
    :cond_4
    iget v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 488
    :cond_5
    sget-boolean v3, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$100(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-ne v3, v5, :cond_8

    .line 489
    :cond_6
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_7

    .line 490
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-virtual {v5, v7}, Lcom/android/music/common/settings/MusicSettingsEffect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$502(Lcom/android/music/common/settings/MusicSettingsEffect;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 497
    :goto_4
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 498
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 499
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Bass enhancement, Externalization need headset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 495
    .restart local p0
    :cond_7
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4

    .line 504
    :cond_8
    iget v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$202(I)I

    .line 507
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$700(Lcom/android/music/common/settings/MusicSettingsEffect;)V

    .line 509
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 511
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_0

    .line 513
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x1

    sget-object v5, Lcom/android/music/common/settings/MusicSettingsEffect;->mappingMenuArray:[I

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v6

    aget v5, v5, v6

    aput v5, v3, v4

    .line 514
    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 516
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 517
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnCheckedChangeListener: setR2VSMode ErrormClickedNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
