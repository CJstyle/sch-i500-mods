.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$3;,
        Lcom/android/phone/CallCard$CallCardScreenState;
    }
.end annotation


# static fields
.field private static mInCallScreen:Lcom/android/phone/InCallScreen;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBirthIcon:Landroid/widget/ImageView;

.field private mCallALSIcon:Landroid/widget/ImageView;

.field private mCallEndTimeBlinkCount:I

.field private mCallInfoTime:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCardTitle:Ljava/lang/String;

.field private mCityId:Lcom/android/phone/TextViewDT;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLandscape:Landroid/view/View;

.field private mLandscapeIncoming:Landroid/view/View;

.field private mLandscapeIncomingAnswer:Landroid/view/View;

.field private mLandscapeIncomingLeft:Landroid/view/View;

.field private mMultiCallInfo:Lcom/android/phone/MultiCallView;

.field private mName:Landroid/widget/TextView;

.field private mNoiseReductionIcon:Landroid/widget/ImageView;

.field private mOwnNumber:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPortrait:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/View;

.field private mRecInfo:Landroid/view/View;

.field private mRingingCallIncomingBitmap:Landroid/graphics/drawable/AnimationDrawable;

.field private mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field private mSnsIcon:Landroid/widget/ImageView;

.field private mSnsInfo:Landroid/widget/LinearLayout;

.field private mSnsStatus:Landroid/widget/TextView;

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorEnded:I

.field private mTextColorGray:I

.field private mTextColorOnHold:I

.field private mTextColorPhoneNumber:I

.field private mTextColorWhite:I

.field private mUpperTitle:Landroid/view/View;

.field private mUpperTitleText:Landroid/widget/TextView;

.field private mUpperTitleTextLand:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 164
    new-instance v1, Lcom/android/phone/CallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 226
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 227
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 232
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 234
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 237
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 242
    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 243
    return-void
.end method

.method static synthetic access$000()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/CallCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/phone/CallCard;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallCard;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCard;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingBitmap:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private clearUpperTitle()V
    .locals 3

    .prologue
    .line 1790
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 1791
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 464
    if-nez p2, :cond_0

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 777
    :goto_0
    return-void

    .line 469
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 474
    .local v15, state:Lcom/android/internal/telephony/Call$State;
    sget-object v18, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 529
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 535
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 536
    .local v8, foreCall:Lcom/android/internal/telephony/Call;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 537
    .local v5, backCall:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_2

    .line 538
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "foreCall state"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "foreCall connections size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    if-eqz v5, :cond_3

    .line 542
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "backCall state"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "backCall connections size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v18

    if-nez v18, :cond_e

    .line 552
    const/4 v7, 0x0

    .line 553
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 554
    .local v12, phoneType:I
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 558
    :cond_4
    if-nez v7, :cond_6

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 565
    .local v9, info:Lcom/android/internal/telephony/CallerInfo;
    sget v18, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 761
    .end local v5           #backCall:Lcom/android/internal/telephony/Call;
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v12           #phoneType:I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 479
    .end local v8           #foreCall:Lcom/android/internal/telephony/Call;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->reset()V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto/16 :goto_1

    .line 489
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->reset()V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto/16 :goto_1

    .line 496
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 502
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 509
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 518
    :pswitch_5
    const-string v18, "CallCard"

    const-string v19, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 570
    .restart local v5       #backCall:Lcom/android/internal/telephony/Call;
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v8       #foreCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #phoneType:I
    :cond_6
    const/4 v14, 0x1

    .line 571
    .local v14, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v10

    .line 572
    .local v10, o:Ljava/lang/Object;
    move-object v0, v10

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v18, v0

    move-object v0, v10

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v11, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v14

    .line 581
    :goto_3
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 582
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v11

    .line 583
    .local v11, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    .line 584
    .local v17, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    .line 585
    .local v16, updatedCnapName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 586
    .restart local v9       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v11

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 587
    check-cast v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v10           #o:Ljava/lang/Object;
    iget-object v9, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 592
    :cond_7
    :goto_4
    if-eqz v9, :cond_9

    .line 593
    if-eqz v17, :cond_8

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 596
    const/4 v14, 0x1

    .line 598
    :cond_8
    if-eqz v16, :cond_9

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 601
    const/4 v14, 0x1

    .line 606
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #obj:Ljava/lang/Object;
    .end local v16           #updatedCnapName:Ljava/lang/String;
    .end local v17           #updatedNumber:Ljava/lang/String;
    :cond_9
    if-eqz v14, :cond_a

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 613
    :cond_a
    const-string v18, "CallCard"

    const-string v19, "displayMainCallStatus: Update onscreen info for a multi call"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    .line 615
    const v18, 0x7f080030

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #backCall:Lcom/android/internal/telephony/Call;
    check-cast v5, Lcom/android/phone/MultiCallView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v18, v0

    const v19, 0x7f0800df

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;

    .line 623
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->updateState(Lcom/android/internal/telephony/Phone;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 576
    .restart local v5       #backCall:Lcom/android/internal/telephony/Call;
    .restart local v10       #o:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    goto/16 :goto_3

    .line 588
    .restart local v9       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v11       #obj:Ljava/lang/Object;
    .restart local v16       #updatedCnapName:Ljava/lang/String;
    .restart local v17       #updatedNumber:Ljava/lang/String;
    :cond_d
    move-object v0, v10

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 589
    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v9, v0

    goto/16 :goto_4

    .line 627
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #o:Ljava/lang/Object;
    .end local v11           #obj:Ljava/lang/Object;
    .end local v12           #phoneType:I
    .end local v14           #runQuery:Z
    .end local v16           #updatedCnapName:Ljava/lang/String;
    .end local v17           #updatedNumber:Ljava/lang/String;
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v18

    if-nez v18, :cond_f

    .line 630
    const-string v18, "CallCard"

    const-string v19, "displayMainCallStatus: Update onscreen info for a conference call."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateDisplayForConferenceCall(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 634
    :cond_f
    const-string v18, "CallCard"

    const-string v19, "displayMainCallStatus: Update onscreen info for a regular call"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v7, 0x0

    .line 638
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 639
    .restart local v12       #phoneType:I
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 641
    sget-boolean v18, Lcom/android/phone/PhoneUtils;->mActualDisconnected:Z

    if-eqz v18, :cond_10

    .line 642
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 653
    :goto_5
    if-nez v7, :cond_13

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 660
    .restart local v9       #info:Lcom/android/internal/telephony/CallerInfo;
    sget v18, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 644
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_5

    .line 647
    :cond_11
    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 648
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_5

    .line 650
    :cond_12
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected phone type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 663
    :cond_13
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 667
    .local v13, presentation:I
    const/4 v14, 0x1

    .line 668
    .restart local v14       #runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v10

    .line 669
    .restart local v10       #o:Ljava/lang/Object;
    move-object v0, v10

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v18, v0

    move-object v0, v10

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v11, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v14

    .line 678
    :goto_6
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 679
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v11

    .line 680
    .restart local v11       #obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    .line 681
    .restart local v17       #updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    .line 682
    .restart local v16       #updatedCnapName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 683
    .restart local v9       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v11

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 684
    move-object v0, v10

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v11, v0

    .end local v11           #obj:Ljava/lang/Object;
    iget-object v9, v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 689
    :cond_14
    :goto_7
    if-eqz v9, :cond_16

    .line 690
    if-eqz v17, :cond_15

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 693
    const/4 v14, 0x1

    .line 695
    :cond_15
    if-eqz v16, :cond_16

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    .line 698
    const/4 v14, 0x1

    .line 703
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v16           #updatedCnapName:Ljava/lang/String;
    .end local v17           #updatedNumber:Ljava/lang/String;
    :cond_16
    if-eqz v14, :cond_1c

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 708
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v9

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v18, v0

    move-object v0, v9

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v13

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v19

    if-nez v19, :cond_17

    sget-object v19, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b

    :cond_17
    const/16 v19, 0x1

    :goto_9
    move-object/from16 v0, v18

    move-object v1, v9

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    goto/16 :goto_2

    .line 673
    .end local v9           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    goto/16 :goto_6

    .line 685
    .local v9, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v11       #obj:Ljava/lang/Object;
    .restart local v16       #updatedCnapName:Ljava/lang/String;
    .restart local v17       #updatedNumber:Ljava/lang/String;
    :cond_19
    move-object v0, v10

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 686
    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v9, v0

    goto/16 :goto_7

    .line 708
    .end local v11           #obj:Ljava/lang/Object;
    .end local v16           #updatedCnapName:Ljava/lang/String;
    .end local v17           #updatedNumber:Ljava/lang/String;
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1a
    const/16 v19, 0x0

    goto :goto_8

    .line 709
    :cond_1b
    const/16 v19, 0x0

    goto :goto_9

    .line 724
    .end local v9           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v19

    move-object/from16 v0, v18

    move-object v1, v10

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    .line 726
    move-object v0, v10

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    .line 727
    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    .line 729
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 730
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 731
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 736
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move/from16 v3, v18

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 737
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1d
    move-object v0, v10

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 738
    check-cast v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v10           #o:Ljava/lang/Object;
    iget-object v6, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 739
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v6, :cond_5

    .line 744
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move/from16 v3, v18

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 747
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v10       #o:Ljava/lang/Object;
    :cond_1e
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 1248
    return-void
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .parameter "call"

    .prologue
    .line 1251
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1254
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1258
    const v1, 0x7f0d01b7

    .line 1262
    .local v1, resID:I
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v1           #resID:I
    :goto_0
    return-object v2

    .line 1260
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1273
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1304
    const v1, 0x7f0d01b7

    .line 1307
    .local v1, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1275
    .end local v1           #resID:I
    :pswitch_0
    const v1, 0x7f0d005e

    .line 1276
    .restart local v1       #resID:I
    goto :goto_0

    .line 1279
    .end local v1           #resID:I
    :pswitch_1
    const v1, 0x7f0d005f

    .line 1280
    .restart local v1       #resID:I
    goto :goto_0

    .line 1284
    .end local v1           #resID:I
    :pswitch_2
    const v1, 0x7f0d0060

    .line 1285
    .restart local v1       #resID:I
    goto :goto_0

    .line 1288
    .end local v1           #resID:I
    :pswitch_3
    const v1, 0x7f0d0061

    .line 1289
    .restart local v1       #resID:I
    goto :goto_0

    .line 1292
    .end local v1           #resID:I
    :pswitch_4
    const v1, 0x7f0d0062

    .line 1293
    .restart local v1       #resID:I
    goto :goto_0

    .line 1296
    .end local v1           #resID:I
    :pswitch_5
    const v1, 0x7f0d0063

    .line 1297
    .restart local v1       #resID:I
    goto :goto_0

    .line 1300
    .end local v1           #resID:I
    :pswitch_6
    const v1, 0x7f0d0064

    .line 1301
    .restart local v1       #resID:I
    goto :goto_0

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1506
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1507
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1512
    :cond_0
    :goto_0
    return-object v0

    .line 1508
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p1, v1, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 8
    .parameter "call"

    .prologue
    const v7, 0x7f0d01b1

    const v6, 0x7f0d01af

    .line 1033
    const/4 v2, 0x0

    .line 1034
    .local v2, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1035
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1039
    .local v0, context:Landroid/content/Context;
    sget-object v4, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1093
    :goto_0
    :pswitch_0
    return-object v2

    .line 1046
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1047
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1048
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1049
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1053
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 1054
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1056
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1061
    .end local v1           #phoneType:I
    :pswitch_2
    const v4, 0x7f0d01b8

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1064
    goto :goto_0

    .line 1068
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1069
    goto :goto_0

    .line 1076
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1077
    const v4, 0x7f0d01b4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1079
    :cond_3
    const v4, 0x7f0d01b3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1081
    goto :goto_0

    .line 1084
    :pswitch_5
    const v4, 0x7f0d01b9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1085
    goto :goto_0

    .line 1088
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 267
    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f080033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f080036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mOwnNumber:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f080037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/TextViewDT;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCityId:Lcom/android/phone/TextViewDT;

    .line 283
    const v0, 0x7f080022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    .line 284
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    .line 285
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 288
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 290
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "title"
    .parameter "color"
    .parameter "state"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1769
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1783
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "contact_is_updated"

    .line 1705
    sget-object v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 1707
    sget-object v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contact_is_updated"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1709
    if-ne v0, v3, :cond_0

    .line 1710
    sget-object v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contact_is_updated"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v2

    .line 1723
    :goto_0
    return v0

    .line 1715
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_2

    .line 1716
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move v0, v3

    .line 1721
    goto :goto_0

    .line 1719
    :cond_1
    const v0, 0x7f020135

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1723
    goto :goto_0
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1728
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1730
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1734
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1735
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1736
    return-void
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 837
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 838
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 845
    .local v2, duration:J
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 846
    .local v7, phoneType:I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 847
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-nez v9, :cond_0

    .line 848
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 864
    :goto_0
    sget-object v9, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 967
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v9, v10, v8}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 970
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 976
    :goto_1
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_b

    .line 978
    const/4 v5, 0x0

    .line 980
    .local v5, isRecState:Z
    const/4 v4, 0x0

    .line 981
    .local v4, isNoiseReductionState:Z
    iget-object v9, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v9, p0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    .end local v4           #isNoiseReductionState:Z
    .end local v5           #isRecState:Z
    :goto_2
    return-void

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d01b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 852
    :cond_1
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 853
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v9

    if-nez v9, :cond_2

    .line 854
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 856
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d01b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 859
    :cond_3
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 867
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    .line 868
    .local v0, bluetoothActive:Z
    if-eqz v0, :cond_6

    const v9, 0x7f0201ca

    move v6, v9

    .line 870
    .local v6, ongoingCallIcon:I
    :goto_3
    if-eqz v0, :cond_7

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move v1, v9

    .line 873
    .local v1, connectedTextColor:I
    :goto_4
    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    .line 876
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 878
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v9, v10, v8}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 892
    :cond_4
    :goto_5
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 894
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    iget-object v9, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 896
    iget-object v9, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    :cond_5
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 898
    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 868
    .end local v1           #connectedTextColor:I
    .end local v6           #ongoingCallIcon:I
    :cond_6
    const v9, 0x7f0201c9

    move v6, v9

    goto :goto_3

    .line 870
    .restart local v6       #ongoingCallIcon:I
    :cond_7
    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move v1, v9

    goto :goto_4

    .line 883
    .restart local v1       #connectedTextColor:I
    :cond_8
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_4

    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_5

    .line 885
    :cond_9
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 887
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_5

    .line 911
    .end local v0           #bluetoothActive:Z
    .end local v1           #connectedTextColor:I
    .end local v6           #ongoingCallIcon:I
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 916
    iget-object v9, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object v9, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x64

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 920
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    iget-object v9, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v9, :cond_a

    .line 923
    iget-object v9, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 924
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 926
    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 940
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 946
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 948
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 957
    :pswitch_3
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v9, v10, v8}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 959
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 984
    :cond_b
    iget-object v9, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v9, p0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateDisplayForConferenceCall(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 1524
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1527
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1529
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1532
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v4}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1535
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1536
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCityId:Lcom/android/phone/TextViewDT;

    invoke-virtual {v0, v4}, Lcom/android/phone/TextViewDT;->setVisibility(I)V

    .line 1537
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v1, 0x0

    .line 1322
    if-nez p4, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1328
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1333
    if-eqz p1, :cond_d

    .line 1347
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1348
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1349
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 1389
    :goto_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v6, v3

    move-object v8, v0

    move-object v0, v2

    .line 1394
    :goto_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1395
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0d01ba

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1403
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    if-eqz p3, :cond_10

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_10

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1428
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1432
    if-eqz v8, :cond_12

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1433
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1442
    :goto_5
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1445
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOwnNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOwnNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1468
    :goto_6
    if-eqz p1, :cond_14

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1469
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v0, :pswitch_data_0

    .line 1477
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1479
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    :goto_8
    if-eqz p1, :cond_4

    .line 1486
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    if-eqz v2, :cond_15

    move v2, v1

    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1491
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCityId:Lcom/android/phone/TextViewDT;

    invoke-static {v0, p1}, Lcom/android/phone/CityIdInfo;->setCityIdDisplayCutCityName(Lcom/android/phone/TextViewDT;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1495
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_5

    .line 1497
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1498
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v9}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1500
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1350
    :cond_6
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_7

    .line 1354
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1355
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1356
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1357
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1358
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_1

    .line 1361
    :cond_8
    const-string v0, "UNKNOWN"

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1362
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d005b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1364
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1365
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x10403a3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1368
    :cond_a
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1374
    :cond_b
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_c

    .line 1378
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .line 1380
    if-eqz p4, :cond_16

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isFakeCall()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1381
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1385
    :cond_c
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1386
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_1

    .line 1391
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v3

    move-object v8, v3

    goto/16 :goto_2

    .line 1397
    :cond_e
    if-eqz p1, :cond_f

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-ne v2, v3, :cond_f

    .line 1398
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1401
    :goto_a
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1400
    :cond_f
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 1417
    :cond_10
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_2

    .line 1419
    if-eqz p1, :cond_11

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_11

    .line 1420
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_4

    .line 1421
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1425
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v7, 0x7f020135

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_4

    .line 1437
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1450
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOwnNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1471
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v2, 0x7f0201ed

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1473
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v2, 0x7f0201ee

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1475
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v2, 0x7f0201ef

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1481
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_15
    move v2, v9

    .line 1486
    goto/16 :goto_9

    :cond_16
    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 6
    .parameter "timeElapsed"

    .prologue
    .line 994
    iget-object v2, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 995
    iget-object v2, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 997
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 998
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallDuration(Lcom/android/internal/telephony/Phone;)J

    move-result-wide v2

    sget v4, Lcom/android/phone/PhoneUtils;->ADD_CALL_DELAY:I

    const/16 v5, 0x3e8

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    move v0, v2

    .line 1020
    .local v0, canAddCall:Z
    :goto_1
    sget-object v2, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_2

    .line 1021
    sget-object v2, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->updateAddCallOption(Z)V

    .line 1024
    :cond_2
    return-void

    .line 1000
    .end local v0           #canAddCall:Z
    :cond_3
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, time:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1015
    .end local v1           #time:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    .line 385
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 386
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 388
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    move-object v1, v0

    .line 399
    const/4 v0, 0x0

    .line 402
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 404
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 405
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 406
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 415
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 453
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 454
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 1550
    .line 1553
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1554
    sget-object v0, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1599
    :pswitch_0
    const/4 v2, 0x0

    .line 1602
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1603
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1604
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1611
    :goto_0
    if-eqz v0, :cond_b

    .line 1612
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1613
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_5

    .line 1614
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1621
    :goto_1
    if-eqz v0, :cond_a

    .line 1622
    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1637
    :goto_2
    if-nez v2, :cond_8

    .line 1638
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_7

    .line 1640
    :cond_0
    if-eqz v0, :cond_6

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 1642
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1696
    :cond_1
    :goto_3
    return-void

    .line 1559
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_c

    .line 1563
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1564
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v1, :cond_c

    .line 1566
    :cond_2
    const v0, 0x7f020211

    .line 1690
    :goto_4
    if-eqz v0, :cond_1

    .line 1692
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1694
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    :pswitch_2
    move v0, v4

    .line 1575
    goto :goto_4

    .line 1605
    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1606
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1608
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1615
    :cond_5
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_b

    .line 1616
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 1646
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1648
    sget-object v0, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 1651
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingBitmap:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1652
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/CallCard$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1673
    :cond_7
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1674
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v6, :cond_9

    .line 1676
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v4}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1678
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    move v0, v2

    goto/16 :goto_4

    .line 1683
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1684
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_4

    :cond_a
    move v2, v4

    goto/16 :goto_2

    :cond_b
    move-object v0, v2

    goto/16 :goto_1

    :cond_c
    move v0, v4

    goto/16 :goto_4

    .line 1554
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1648
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 427
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 432
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 438
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 439
    return-void
.end method


# virtual methods
.method public hideCallCardElements()V
    .locals 2

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 298
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    .line 299
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    .line 302
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    .line 303
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallALSIcon:Landroid/widget/ImageView;

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 312
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    .line 315
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingBitmap:Landroid/graphics/drawable/AnimationDrawable;

    .line 318
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 826
    if-eqz p2, :cond_0

    .line 827
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 829
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v7, 0x0

    .line 786
    instance-of v5, p2, Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_3

    .line 791
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Call;

    move-object v1, v0

    .line 793
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 796
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v3, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 799
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 800
    .local v4, presentation:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 807
    :cond_0
    iget-boolean v5, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_2

    .line 808
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v5, v7, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 812
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 818
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #presentation:I
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 810
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #presentation:I
    .restart local p2
    :cond_2
    iget-object v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v5, v4, v7, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 814
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #presentation:I
    :cond_3
    instance-of v5, p2, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 816
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 253
    return-void
.end method

.method public resetPhoto()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 246
    sput-object p1, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 247
    return-void
.end method

.method setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallCard;->setOrientation(IZ)V

    .line 1813
    return-void
.end method

.method setOrientation(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1817
    if-ne p1, v6, :cond_1

    move v1, v6

    .line 1819
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 1821
    :goto_1
    const/4 v2, 0x0

    .line 1822
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/phone/CallCard;->mLandscape:Landroid/view/View;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLandscapeIncomingLeft:Landroid/view/View;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/phone/CallCard;->mLandscapeIncomingAnswer:Landroid/view/View;

    aput-object v4, v3, v8

    .line 1825
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v5, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v4, v5, :cond_3

    .line 1826
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1827
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    .line 1870
    :goto_2
    if-eqz v0, :cond_a

    .line 1872
    array-length v2, v3

    move v4, v7

    :goto_3
    if-ge v4, v2, :cond_9

    aget-object v5, v3, v4

    .line 1874
    if-eqz v5, :cond_0

    if-eq v5, v0, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1876
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1872
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move v1, v7

    .line 1817
    goto :goto_0

    :cond_2
    move v0, v7

    .line 1819
    goto :goto_1

    .line 1828
    :cond_3
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    .line 1831
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLockedTouchUI()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1833
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lockscreen_type_key"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1834
    if-nez v0, :cond_10

    move v0, v7

    .line 1840
    :goto_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v5, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING_LEFT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v4, v5, :cond_5

    .line 1842
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING_LEFT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1843
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncomingLeft:Landroid/view/View;

    if-nez v0, :cond_4

    .line 1844
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1845
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncomingLeft:Landroid/view/View;

    .line 1847
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncomingLeft:Landroid/view/View;

    goto :goto_2

    .line 1849
    :cond_5
    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v4, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v0, v4, :cond_f

    .line 1851
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1852
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1853
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1854
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Landroid/view/View;

    .line 1857
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Landroid/view/View;

    goto :goto_2

    .line 1860
    :cond_7
    if-nez v1, :cond_f

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v4, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v0, v4, :cond_f

    .line 1862
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1863
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1864
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1865
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Landroid/view/View;

    .line 1866
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    .line 1868
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Landroid/view/View;

    goto/16 :goto_2

    .line 1879
    :cond_9
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1883
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v0, v2, :cond_c

    .line 1885
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1887
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_b

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_d

    .line 1888
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1893
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    if-eqz v1, :cond_e

    move v1, v7

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1894
    return-void

    .line 1890
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_e
    move v1, v9

    .line 1893
    goto :goto_6

    :cond_f
    move-object v0, v2

    goto/16 :goto_2

    :cond_10
    move v0, v6

    goto/16 :goto_4
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 263
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    .line 334
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 335
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/Phone;)V

    .line 377
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 342
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 350
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 351
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_3

    .line 356
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/Phone;)V

    .line 375
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    goto :goto_0

    .line 373
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/Phone;)V

    goto :goto_1
.end method
