.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"


# instance fields
.field private currentPhone:Lcom/android/internal/telephony/Phone;

.field private mAllowInCallTouchUi:Z

.field private mAllowIncomingCallTouchUi:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

.field private mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallTouchUiVew:Landroid/view/View;

.field private mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

.field private mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

.field private mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    .line 152
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    .line 153
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 534
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method private updateEndCallButton(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    .line 419
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 420
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 421
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 424
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 432
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 433
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 434
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v2}, Lcom/android/phone/InCallButtonsView;->disableInCallControls()V

    goto :goto_0

    .line 438
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-nez v2, :cond_4

    .line 439
    const v2, 0x7f0800b9

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EndCallButtonsView;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 440
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/EndCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 442
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->UpdateSilenceButton()V

    .line 446
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v2, v5}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method UpdateSilenceButton()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    .line 509
    const-string v0, " UpdateSilenceButton misButtonSilenced = false"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 511
    :cond_0
    return-void
.end method

.method isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 173
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    .line 225
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 161
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingButtonsView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public redial()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->handleCallKey()V

    .line 453
    :cond_0
    return-void
.end method

.method removeIncomingPuzzleWidget()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingPuzzleWidget;->removeAllViews()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    .line 502
    :cond_0
    return-void
.end method

.method removeIncomingSlidingWidget()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingSlidingWidget;->removeAllViews()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 495
    :cond_0
    return-void
.end method

.method public resetIncomingPuzzleWidgetAnim()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "resetIncomingPuzzleWidgetAnim is called"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingPuzzleWidget;->resetAnimationRunning()V

    .line 519
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 157
    return-void
.end method

.method setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 472
    iput p1, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    .line 474
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/IncomingPuzzleWidget;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 488
    :cond_1
    return-void
.end method

.method setVolumeButtonVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-eqz v0, :cond_0

    .line 524
    if-eqz p1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget-object v0, v0, Lcom/android/phone/InCallButtonsView;->mVolumeButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/Phone;)V
    .locals 18
    .parameter "phone"

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v14, v0

    if-nez v14, :cond_1

    .line 235
    const-string v14, "- updateState: mInCallScreen has been destroyed; bailing out..."

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v14

    if-nez v14, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 245
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    .line 249
    .local v13, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v10, 0x0

    .line 250
    .local v10, showIncomingCallControls:Z
    const/4 v12, 0x0

    .line 251
    .local v12, showIncomingSlidingWidget:Z
    const/4 v11, 0x0

    .line 252
    .local v11, showIncomingPuzzleWidget:Z
    const/4 v9, 0x0

    .line 253
    .local v9, showInCallControls:Z
    const/4 v3, 0x0

    .line 255
    .local v3, disabledIncoming:Z
    sget-object v14, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v13, v14, :cond_b

    .line 257
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLockedTouchUI()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mContentResolver:Landroid/content/ContentResolver;

    move-object v14, v0

    const-string v15, "lockscreen_type_key"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 261
    .local v5, lockType:I
    if-nez v5, :cond_7

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    move-object v14, v0

    if-nez v14, :cond_3

    .line 263
    const v14, 0x7f0800b6

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingSlidingWidget;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 266
    :cond_3
    const/4 v12, 0x1

    .line 280
    .end local v5           #lockType:I
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    move v14, v0

    if-eqz v14, :cond_6

    .line 286
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 288
    .local v8, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_5

    .line 292
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_9

    .line 293
    const/4 v3, 0x1

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallTouchUi;->UpdateSilenceButton()V

    .line 324
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 325
    .local v6, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    move-wide v14, v0

    const-wide/16 v16, 0x1f4

    add-long v14, v14, v16

    cmp-long v14, v6, v14

    if-gez v14, :cond_6

    .line 326
    const-string v14, "updateState: Too soon after last action; not drawing!"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 327
    const/4 v10, 0x0

    .line 358
    .end local v6           #now:J
    .end local v8           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_6
    :goto_3
    if-eqz v10, :cond_c

    if-eqz v9, :cond_c

    .line 359
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 268
    .restart local v5       #lockType:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    move-object v14, v0

    if-nez v14, :cond_8

    .line 269
    const v14, 0x7f0800b7

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingPuzzleWidget;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingPuzzleWidget;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 272
    :cond_8
    const/4 v11, 0x1

    goto :goto_1

    .line 302
    .end local v5           #lockType:I
    .restart local v8       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_9
    if-nez v12, :cond_5

    if-nez v11, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    if-nez v14, :cond_a

    .line 305
    const v14, 0x7f0800b8

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingButtonsView;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 311
    :cond_a
    const/4 v10, 0x1

    goto :goto_2

    .line 343
    .end local v8           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    move v14, v0

    if-eqz v14, :cond_6

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 347
    const/4 v9, 0x1

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    if-nez v14, :cond_6

    .line 349
    const v14, 0x7f0800b5

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/InCallButtonsView;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/android/phone/InCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_3

    .line 363
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    move-object v14, v0

    if-eqz v14, :cond_d

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    .line 364
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    move-object v14, v0

    if-eqz v14, :cond_e

    if-nez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingPuzzleWidget;->setVisibility(I)V

    .line 365
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    if-eqz v14, :cond_f

    if-nez v10, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingButtonsView;->setVisibility(I)V

    .line 367
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    move-object v14, v0

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 368
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 369
    :cond_11
    if-eqz v9, :cond_15

    .line 370
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 371
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 372
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->setLockedTouchUI(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateEndCallButton(Lcom/android/internal/telephony/Phone;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallTouchUi;->UpdateSilenceButton()V

    .line 392
    :cond_12
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallTouchUi;->removeIncomingSlidingWidget()V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallTouchUi;->removeIncomingPuzzleWidget()V

    goto/16 :goto_0

    .line 386
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 388
    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v14, :cond_14

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v14, :cond_12

    .line 389
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/InCallButtonsView;->disableInCallControls()V

    goto :goto_4

    .line 395
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v4           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_15
    if-eqz v10, :cond_17

    .line 397
    if-eqz v3, :cond_16

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/IncomingButtonsView;->disableInCallControls()V

    .line 402
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/IncomingButtonsView;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingButtonsView;->setVisibility(I)V

    goto/16 :goto_0

    .line 400
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonsView:Lcom/android/phone/IncomingButtonsView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/phone/IncomingButtonsView;->updateState(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_5

    .line 406
    :cond_17
    if-eqz v12, :cond_18

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0

    .line 409
    :cond_18
    if-eqz v11, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/phone/IncomingPuzzleWidget;->updateState(Lcom/android/internal/telephony/Phone;I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingPuzzleWidget:Lcom/android/phone/IncomingPuzzleWidget;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingPuzzleWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method
