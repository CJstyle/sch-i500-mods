.class public Lcom/android/phone/IncomingSlidingWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/Button;

.field private mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 64
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingSlidingWidget;)Lcom/android/internal/widget/SlidingTab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 129
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 130
    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$3;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private linkControls()V
    .locals 5

    .prologue
    .line 70
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SlidingTab;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    .line 71
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x7f0201cd

    const v2, 0x108022f

    const v3, 0x1080208

    const v4, 0x108021b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 77
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x7f0201ce

    const v2, 0x1080230

    const v3, 0x1080211

    const v4, 0x1080228

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x7f0d023e

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 86
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 87
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$1;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$2;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 98
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RejectCallWithMsgLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    .line 99
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 274
    const-string v0, "IncomingSlidingWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 147
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 149
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->clearAnimation()V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 152
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030030

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->linkControls()V

    .line 110
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 111
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 116
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 235
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 173
    packed-switch p2, :pswitch_data_0

    .line 224
    const-string v0, "IncomingSlidingWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 184
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 208
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/16 v2, 0x8

    .line 239
    if-nez p1, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->showIncomingCallWidget()V

    .line 241
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 242
    .local v0, presentation:I
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 246
    :goto_0
    const-string v1, "IncomingSlidingWidget show"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 253
    .end local v0           #presentation:I
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    return-void

    .line 245
    .restart local v0       #presentation:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 248
    .end local v0           #presentation:I
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 249
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 251
    const-string v1, "IncomingSlidingWidget gone"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/Phone;I)V
    .locals 3
    .parameter "phone"
    .parameter "orientation"

    .prologue
    .line 257
    iget v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    if-eq v2, p2, :cond_0

    .line 258
    iput p2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 261
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 262
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, v1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhoneNumber(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, p1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 265
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 266
    return-void
.end method
