.class public final Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "SoundSettingButton.java"


# static fields
.field private static mSoundProfile:I

.field private static mSoundText:I

.field private static mVibProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundIconView:Landroid/widget/ImageView;

.field private mSoundStatusIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundIconView:Landroid/widget/ImageView;

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundStatusIconView:Landroid/widget/ImageView;

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    return-void
.end method

.method private updateSoundIconAndText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    const/4 v1, 0x0

    .local v1, soundIcon:I
    const/4 v2, 0x0

    .local v2, soundText:I
    const/4 v3, 0x0

    .line 95
    .local v3, soundstatusIcon:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getActivateStatus()I

    move-result v0

    .line 96
    .local v0, activateStatus:I
    const/16 v4, 0x53

    invoke-virtual {p0, v5, v4, v5, v5}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 98
    if-ne v6, v0, :cond_2

    .line 99
    sget v4, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-nez v4, :cond_1

    .line 100
    const v1, 0x7f020018

    .line 101
    const v2, 0x7f07000f

    .line 102
    const v3, 0x7f020014

    .line 120
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 123
    sput v2, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    .line 124
    return-void

    .line 103
    :cond_1
    sget v4, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v6, v4, :cond_0

    .line 104
    const v1, 0x7f02001a

    .line 105
    const v2, 0x7f070010

    .line 106
    const v3, 0x7f020015

    goto :goto_0

    .line 109
    :cond_2
    if-nez v0, :cond_0

    .line 110
    sget v4, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    if-ne v6, v4, :cond_3

    .line 111
    const/16 v4, 0x44

    invoke-virtual {p0, v5, v4, v5, v5}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setPadding(IIII)V

    .line 112
    const v1, 0x7f02001a

    .line 113
    const v2, 0x7f07000e

    .line 118
    :goto_1
    const v3, 0x7f020015

    goto :goto_0

    .line 115
    :cond_3
    const v1, 0x7f020019

    .line 116
    const v2, 0x7f07000c

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x2

    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateSoundIconAndText()V

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    const-string v1, "SoundSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 153
    return-void

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    goto :goto_0

    .line 147
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "SoundSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 158
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "SoundSettingButton"

    .line 55
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 56
    const-string v2, "SoundSettingButton"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, rootView:Landroid/view/View;
    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundIconView:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundStatusIconView:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v2, "SoundSettingButton"

    const-string v2, "mAudioManager is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 80
    const-string v0, "SoundSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 128
    return-void
.end method
