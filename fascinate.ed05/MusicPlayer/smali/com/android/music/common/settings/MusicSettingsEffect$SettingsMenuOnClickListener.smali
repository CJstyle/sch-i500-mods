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
    .line 328
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    .line 330
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f0a00b8

    const v6, 0x7f0a00af

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 334
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$700(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-virtual {v4, v7}, Lcom/android/music/common/settings/MusicSettingsEffect;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$602(Lcom/android/music/common/settings/MusicSettingsEffect;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 344
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500()Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 396
    :cond_0
    :goto_1
    return-void

    .line 341
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 348
    :cond_2
    const/4 v1, 0x0

    .line 349
    .local v1, index:I
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    .line 351
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    if-ne v1, v2, :cond_3

    .line 353
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setSelected(Z)V

    .line 349
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 357
    :cond_3
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setSelected(Z)V

    goto :goto_3

    .line 361
    :cond_4
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    .line 363
    :cond_5
    sget-boolean v2, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-ne v2, v4, :cond_8

    .line 365
    :cond_6
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_7

    .line 366
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$700(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-virtual {v4, v6}, Lcom/android/music/common/settings/MusicSettingsEffect;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$602(Lcom/android/music/common/settings/MusicSettingsEffect;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 373
    :goto_4
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 374
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$500()Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 375
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bass enhancement, Externalization need headset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 371
    .restart local p0
    :cond_7
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4

    .line 380
    :cond_8
    iget v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->mClickedNumber:I

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$302(I)I

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$800(Lcom/android/music/common/settings/MusicSettingsEffect;)V

    .line 385
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$000(Lcom/android/music/common/settings/MusicSettingsEffect;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x1

    sget-object v4, Lcom/android/music/common/settings/MusicSettingsEffect;->mappingMenuArray:[I

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()I

    move-result v5

    aget v4, v4, v5

    aput v4, v2, v3

    .line 388
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$000(Lcom/android/music/common/settings/MusicSettingsEffect;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 390
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnCheckedChangeListener: setR2VSMode ErrormClickedNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
