.class public Lcom/android/phone/InCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "InCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;
    }
.end annotation


# instance fields
.field private final HANDLE_UP_EVENT:I

.field private currentPhone:Lcom/android/internal/telephony/Phone;

.field private inCallControlState:Lcom/android/phone/InCallControlState;

.field private mAddButton:Landroid/widget/Button;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mDropLastCallButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallSaveButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/InCallButtonsViewLand;

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field mStatusBar:Landroid/app/StatusBarManager;

.field private mSwapButton:Landroid/widget/Button;

.field public mVolumeButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 79
    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mStatusBar:Landroid/app/StatusBarManager;

    .line 81
    iput v1, p0, Lcom/android/phone/InCallButtonsView;->HANDLE_UP_EVENT:I

    .line 340
    new-instance v0, Lcom/android/phone/InCallButtonsView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallButtonsView$1;-><init>(Lcom/android/phone/InCallButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 85
    iput v1, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 86
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mStatusBar:Landroid/app/StatusBarManager;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallButtonsView;)Lcom/android/phone/InCallControlState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallButtonsView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallButtonsView;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallButtonsView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    return-object v0
.end method

.method private handleOnClickButton(I)V
    .locals 5
    .parameter "resId"

    .prologue
    .line 378
    packed-switch p1, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 402
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 407
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, phoneNumber:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .local v1, insertIntent:Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x7f08009b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    const v2, 0x7f0800a0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    .line 92
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v2, 0x7f0800a1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    .line 94
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f0800a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f0800a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mDropLastCallButton:Landroid/widget/Button;

    .line 98
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mDropLastCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f08009d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 101
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v2, 0x7f08009e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 103
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v2, 0x7f08009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    .line 105
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f08009c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    .line 107
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v2, 0x7f0800a6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 109
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v2, 0x7f0800a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 111
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v2, 0x7f0800a4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 113
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const/16 v1, 0x8

    .line 117
    .local v1, vis:I
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    .line 120
    :cond_0
    const v2, 0x7f08009b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    .line 121
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    new-instance v0, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallButtonsView;)V

    .line 126
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 554
    const-string v0, "InCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method private updateStatusBarButton()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->updateMuteState(ZZ)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->updateSpeakerState(Z)V

    .line 457
    :cond_1
    return-void
.end method


# virtual methods
.method disableInCallControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const-string v0, "skip this mMergeButton.setEnabled(false)"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 433
    invoke-direct {p0}, Lcom/android/phone/InCallButtonsView;->updateStatusBarButton()V

    .line 437
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDeviceLock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaActivated()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isdefaultEsnState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 444
    :goto_0
    return-void

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 8
    .parameter "inCallScreen"

    .prologue
    const-string v7, " ms"

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 142
    .local v3, startTime:J
    iget-object v5, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 143
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030027

    const/4 v6, 0x1

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 148
    .local v0, deltaTime:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inflation took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loading dynamic icons took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 158
    const v5, 0x7f08009a

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loading dynamic icons took:31312321 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loading dynamic icons took: 312312312"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loading dynamic icons took: 312312"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const v4, 0x7f08009d

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 316
    .local v2, id:I
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 317
    .local v0, currentCall:Lcom/android/internal/telephony/Call;
    if-eq v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isFakeCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-ne v2, v4, :cond_2

    .line 324
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 325
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/InCallButtonsView;->handleOnClickButton(I)V

    .line 332
    const v3, 0x7f0800a1

    if-ne v2, v3, :cond_0

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can merge is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v4, v4, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v4, v4, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 169
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/Phone;I)V
    .locals 21
    .parameter "phone"
    .parameter "orientation"

    .prologue
    .line 184
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    move/from16 v12, v16

    .line 185
    .local v12, isPortrait:Z
    :goto_0
    const/4 v15, 0x0

    .line 186
    .local v15, tempView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v11

    .line 187
    .local v11, isDialerOpened:Z
    if-nez v12, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 189
    const v16, 0x7f0800a7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/InCallButtonsViewLand;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallButtonsViewLand;->initialize()V

    .line 193
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    move-object/from16 v16, v0

    const v17, 0x7f0800a9

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallButtonsViewLand;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 194
    .local v5, buttonsWithDialer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    move-object/from16 v16, v0

    const v17, 0x7f0800aa

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallButtonsViewLand;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 195
    .local v4, buttons:Landroid/view/View;
    if-eqz v11, :cond_8

    const/16 v16, 0x0

    :goto_1
    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    if-nez v11, :cond_9

    const/16 v16, 0x0

    :goto_2
    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    if-eqz v11, :cond_a

    move-object v15, v5

    .line 200
    .end local v4           #buttons:Landroid/view/View;
    .end local v5           #buttonsWithDialer:Landroid/view/View;
    :cond_1
    :goto_3
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v16, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    .line 202
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v12, :cond_c

    const/16 v17, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    move-object/from16 v16, v0

    if-nez v12, :cond_d

    const/16 v17, 0x0

    :goto_6
    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    .line 210
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 212
    .local v8, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 213
    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 214
    .local v9, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 217
    .local v3, bgCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mSwapButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->isThreeWayCall:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    const/16 v17, 0x0

    :goto_7
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Button;->isPressed()Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    :goto_8
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDropLastCallButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->isThreeWayCall:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    const/16 v17, 0x0

    :goto_9
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    :cond_4
    const/16 v17, 0x8

    :goto_a
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v17

    if-nez v17, :cond_12

    const/16 v17, 0x1

    :goto_b
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1d

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, 0x7f0d01e6

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 282
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen;->isDeviceLock()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen;->isOtaActivated()Z

    move-result v16

    if-nez v16, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen;->isdefaultEsnState()Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 283
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 291
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    move/from16 v17, v0

    if-eqz v17, :cond_20

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v17

    if-nez v17, :cond_20

    const/16 v17, 0x1

    :goto_f
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallButtonsView;->updateStatusBarButton()V

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const-string v16, "es"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/high16 v17, 0x4150

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setTextSize(F)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/high16 v17, 0x4140

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setTextSize(F)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/high16 v17, 0x4150

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setTextSize(F)V

    .line 308
    :cond_6
    return-void

    .line 184
    .end local v2           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v3           #bgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v11           #isDialerOpened:Z
    .end local v12           #isPortrait:Z
    .end local v15           #tempView:Landroid/view/View;
    :cond_7
    const/16 v16, 0x0

    move/from16 v12, v16

    goto/16 :goto_0

    .line 195
    .restart local v4       #buttons:Landroid/view/View;
    .restart local v5       #buttonsWithDialer:Landroid/view/View;
    .restart local v11       #isDialerOpened:Z
    .restart local v12       #isPortrait:Z
    .restart local v15       #tempView:Landroid/view/View;
    :cond_8
    const/16 v16, 0x8

    goto/16 :goto_1

    .line 196
    :cond_9
    const/16 v16, 0x8

    goto/16 :goto_2

    :cond_a
    move-object v15, v4

    .line 197
    goto/16 :goto_3

    .end local v4           #buttons:Landroid/view/View;
    .end local v5           #buttonsWithDialer:Landroid/view/View;
    :cond_b
    move-object/from16 v16, v15

    .line 200
    goto/16 :goto_4

    .line 203
    :cond_c
    const/16 v17, 0x8

    goto/16 :goto_5

    .line 205
    :cond_d
    const/16 v17, 0x8

    goto/16 :goto_6

    .line 218
    .restart local v2       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #bgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v8       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_e
    const/16 v17, 0x8

    goto/16 :goto_7

    .line 221
    :cond_f
    const/16 v17, 0x8

    goto/16 :goto_8

    .line 223
    :cond_10
    const/16 v17, 0x8

    goto/16 :goto_9

    .line 225
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 226
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 234
    :cond_13
    sget-object v16, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object v0, v9

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1c

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-nez v16, :cond_16

    const/16 v16, 0x1

    move/from16 v6, v16

    .line 237
    .local v6, canSaveCall:Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 238
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_19

    .line 239
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_17

    const/16 v16, 0x1

    :goto_11
    and-int v6, v6, v16

    .line 240
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v14

    .line 241
    .local v14, presentation:I
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_14

    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_14

    .line 243
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v13

    .line 244
    .local v13, o:Ljava/lang/Object;
    move-object v0, v13

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 245
    move-object v0, v13

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v10, v0

    .line 246
    .local v10, info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v10

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v16, v0

    if-nez v16, :cond_18

    const/16 v16, 0x1

    :goto_12
    and-int v6, v6, v16

    .line 252
    .end local v10           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #o:Ljava/lang/Object;
    .end local v14           #presentation:I
    :cond_14
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v6, :cond_1a

    const/16 v17, 0x8

    :goto_14
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Button;->isPressed()Z

    move-result v16

    if-nez v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v6, :cond_1b

    const/16 v17, 0x0

    :goto_15
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_c

    .line 236
    .end local v6           #canSaveCall:Z
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_16
    const/16 v16, 0x0

    move/from16 v6, v16

    goto/16 :goto_10

    .line 239
    .restart local v6       #canSaveCall:Z
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    :cond_17
    const/16 v16, 0x0

    goto :goto_11

    .line 246
    .restart local v10       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v13       #o:Ljava/lang/Object;
    .restart local v14       #presentation:I
    :cond_18
    const/16 v16, 0x0

    goto :goto_12

    .line 250
    .end local v10           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #o:Ljava/lang/Object;
    .end local v14           #presentation:I
    :cond_19
    const/4 v6, 0x0

    goto :goto_13

    .line 252
    :cond_1a
    const/16 v17, 0x0

    goto :goto_14

    .line 254
    :cond_1b
    const/16 v17, 0x8

    goto :goto_15

    .line 256
    .end local v6           #canSaveCall:Z
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_c

    .line 271
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, 0x7f0d01e5

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 286
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v17

    if-nez v17, :cond_1f

    const/16 v17, 0x1

    :goto_16
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_e

    .line 286
    :cond_1f
    const/16 v17, 0x0

    goto :goto_16

    .line 291
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_f
.end method
