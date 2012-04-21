.class public Lcom/android/phone/IncomingButtonsView;
.super Landroid/widget/RelativeLayout;
.source "IncomingButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;
    }
.end annotation


# instance fields
.field private final RINGTONE_DELAY:I

.field private final UPDATE_RINGTONE:I

.field private final UPDATE_RINGTONE_WITH_DELAY_CHECK:I

.field private currentPhone:Lcom/android/internal/telephony/Phone;

.field private inCallControlState:Lcom/android/phone/InCallControlState;

.field private mAcceptButton:Landroid/widget/Button;

.field private mAcceptPanel:Landroid/view/ViewGroup;

.field private mCallButton:Landroid/widget/Button;

.field private mCallTimeTextView:Landroid/widget/TextView;

.field private mChange:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Landroid/view/View;

.field private mMessageButton:Landroid/widget/Button;

.field private mOrientation:I

.field private mPhoneNum:Ljava/lang/String;

.field private mPortrait:Landroid/view/View;

.field private mQuietPanel:Landroid/view/ViewGroup;

.field private mRejectButton:Landroid/widget/Button;

.field private mRejectPanel:Landroid/view/ViewGroup;

.field private mSilenceButton:Landroid/widget/Button;

.field private mTaskOn:Z

.field private mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

.field private mTimePanel:Landroid/view/ViewGroup;

.field private mTimer:Ljava/util/Timer;

.field private mTimerHandler:Landroid/os/Handler;

.field public misButtonSilenced:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    .line 79
    iput v2, p0, Lcom/android/phone/IncomingButtonsView;->UPDATE_RINGTONE:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IncomingButtonsView;->UPDATE_RINGTONE_WITH_DELAY_CHECK:I

    .line 81
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/IncomingButtonsView;->RINGTONE_DELAY:I

    .line 85
    iput-object v3, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    iput-boolean v1, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    .line 98
    new-instance v0, Lcom/android/phone/IncomingButtonsView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingButtonsView$1;-><init>(Lcom/android/phone/IncomingButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mHandler:Landroid/os/Handler;

    .line 493
    new-instance v0, Lcom/android/phone/IncomingButtonsView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingButtonsView$2;-><init>(Lcom/android/phone/IncomingButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimerHandler:Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    .line 128
    iput v2, p0, Lcom/android/phone/IncomingButtonsView;->mOrientation:I

    .line 130
    iput-boolean v1, p0, Lcom/android/phone/IncomingButtonsView;->mChange:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    .line 132
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimer:Ljava/util/Timer;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingButtonsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->isRingtonePlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingButtonsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->isTTSPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingButtonsView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->endInComingCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingButtonsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mChange:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/IncomingButtonsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/phone/IncomingButtonsView;->mChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mCallTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private endInComingCall()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 457
    return-void
.end method

.method private handleOnClickButton(I)V
    .locals 10
    .parameter

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "hasBackground="

    .line 293
    packed-switch p1, :pswitch_data_0

    .line 438
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableKeyguardIgnoreFurther()V

    .line 298
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 299
    iput-boolean v5, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 337
    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    .line 338
    invoke-direct {p0, v6}, Lcom/android/phone/IncomingButtonsView;->setPanelVisible(Z)V

    .line 339
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->startHandler()V

    goto :goto_0

    .line 342
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->stopHandler()V

    .line 344
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->endInComingCall()V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 347
    const-string v0, "incomingCallButton"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 373
    iput-boolean v5, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    .line 374
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->disableKeyguardIgnoreFurther()V

    .line 377
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v6

    .line 378
    :goto_1
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v6

    .line 379
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasForeground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasBackground="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 381
    if-nez v1, :cond_1

    if-eqz v2, :cond_5

    .line 383
    :cond_1
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 384
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 385
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 386
    const-string v0, "isCdma"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 387
    const-string v0, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    :cond_2
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move v1, v5

    .line 377
    goto :goto_1

    :cond_4
    move v2, v5

    .line 378
    goto :goto_2

    .line 396
    :cond_5
    :try_start_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v1

    if-ne v1, v7, :cond_6

    move v1, v6

    :goto_3
    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/phone/InCallScreen;->startRejectThenRecall(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    move v1, v5

    .line 397
    goto :goto_3

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0007

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 407
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->stopHandler()V

    .line 408
    invoke-direct {p0}, Lcom/android/phone/IncomingButtonsView;->endInComingCall()V

    .line 410
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 411
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableKeyguardIgnoreFurther()V

    .line 412
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v6

    .line 414
    :goto_4
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v6

    .line 415
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasForeground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasBackground="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingButtonsView;->log(Ljava/lang/String;)V

    .line 417
    if-nez v1, :cond_8

    if-eqz v2, :cond_b

    .line 418
    :cond_8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-class v3, Lcom/android/phone/RejectCallWithMsg;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    const-string v2, "phone_number"

    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v2, "CONATACT_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 429
    :goto_6
    iput-boolean v5, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    goto/16 :goto_0

    :cond_9
    move v1, v5

    .line 413
    goto :goto_4

    :cond_a
    move v2, v5

    .line 414
    goto :goto_5

    .line 424
    :cond_b
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/InCallScreen;->startRejectWithMsgAfterDisconnect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 427
    :cond_c
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0008

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 433
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 434
    iput-boolean v6, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    .line 435
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800bd
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, isPlaying:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 238
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isRingtonePlaying()Z

    move-result v0

    .line 241
    :cond_0
    return v0
.end method

.method private isTTSPlaying()Z
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, isTTSPlaying:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 247
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isTTSPlaying()Z

    move-result v0

    .line 250
    :cond_0
    return v0
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptButton:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0800c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mRejectButton:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0800bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f0800c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mCallButton:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0800c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mMessageButton:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mCallTimeTextView:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mQuietPanel:Landroid/view/ViewGroup;

    .line 168
    const v0, 0x7f0800bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptPanel:Landroid/view/ViewGroup;

    .line 169
    const v0, 0x7f0800c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mRejectPanel:Landroid/view/ViewGroup;

    .line 170
    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimePanel:Landroid/view/ViewGroup;

    .line 171
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 450
    const-string v0, "IncomingButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private setPanelVisible(Z)V
    .locals 3
    .parameter "showRejecedPanel"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mQuietPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mRejectPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mQuietPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mRejectPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private startHandler()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 462
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 463
    .local v6, msg:Landroid/os/Message;
    const/16 v0, 0x8

    iput v0, v6, Landroid/os/Message;->what:I

    .line 465
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    if-eqz v0, :cond_1

    .line 466
    iget-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    invoke-virtual {v0}, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->cancel()Z

    .line 469
    :cond_0
    iput-object v1, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    .line 474
    :cond_1
    new-instance v0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;-><init>(Lcom/android/phone/IncomingButtonsView;Lcom/android/phone/IncomingButtonsView$1;)V

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    .line 476
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    if-nez v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 482
    return-void
.end method

.method private stopHandler()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTextViewTask:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    invoke-virtual {v0}, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->mTaskOn:Z

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    return-void
.end method


# virtual methods
.method disableInCallControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 446
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 4
    .parameter "inCallScreen"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 176
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03002d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    const v2, 0x7f0800bb

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    .line 182
    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 183
    .local v0, incomingButtonsLandscapeStub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    .line 184
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/phone/IncomingButtonsView;->linkControls(Landroid/view/View;)V

    .line 186
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 259
    .local v1, id:I
    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 260
    .local v0, currentCall:Lcom/android/internal/telephony/Call;
    const v2, 0x7f0800bd

    if-eq v1, v2, :cond_0

    const v2, 0x7f0800c0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isFakeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/IncomingButtonsView;->handleOnClickButton(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 192
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 137
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView;->mQuietPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    if-nez v0, :cond_2

    .line 138
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_1
    const v0, 0x7f0800bf

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingButtonsView;->handleOnClickButton(I)V

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter "phone"
    .parameter "orientation"

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 195
    iget v3, p0, Lcom/android/phone/IncomingButtonsView;->mOrientation:I

    if-eq v3, p2, :cond_1

    .line 196
    iput p2, p0, Lcom/android/phone/IncomingButtonsView;->mOrientation:I

    .line 197
    iget v3, p0, Lcom/android/phone/IncomingButtonsView;->mOrientation:I

    if-ne v3, v5, :cond_4

    move v0, v5

    .line 199
    .local v0, isPortrait:Z
    :goto_0
    if-eqz v0, :cond_5

    .line 200
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingButtonsView;->linkControls(Landroid/view/View;)V

    .line 214
    .end local v0           #isPortrait:Z
    :cond_1
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/phone/IncomingButtonsView;->setPanelVisible(Z)V

    .line 215
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/IncomingButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    .line 218
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 220
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/IncomingButtonsView;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 222
    .local v1, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 224
    .local v2, ringerMode:I
    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_7

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    iput-boolean v5, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    .line 232
    :cond_3
    :goto_2
    return-void

    .end local v1           #mAudioManager:Landroid/media/AudioManager;
    .end local v2           #ringerMode:I
    :cond_4
    move v0, v6

    .line 197
    goto :goto_0

    .line 206
    .restart local v0       #isPortrait:Z
    :cond_5
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    :cond_6
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mLandscape:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingButtonsView;->linkControls(Landroid/view/View;)V

    goto :goto_1

    .line 229
    .end local v0           #isPortrait:Z
    .restart local v1       #mAudioManager:Landroid/media/AudioManager;
    .restart local v2       #ringerMode:I
    :cond_7
    iget-boolean v3, p0, Lcom/android/phone/IncomingButtonsView;->misButtonSilenced:Z

    if-nez v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method
